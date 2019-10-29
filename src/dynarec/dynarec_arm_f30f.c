#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <pthread.h>
#include <errno.h>

#include "debug.h"
#include "box86context.h"
#include "dynarec.h"
#include "emu/x86emu_private.h"
#include "emu/x86run_private.h"
#include "x86run.h"
#include "x86emu.h"
#include "box86stack.h"
#include "callback.h"
#include "emu/x86run_private.h"
#include "x86trace.h"
#include "dynarec_arm.h"
#include "dynarec_arm_private.h"
#include "arm_printer.h"

#include "dynarec_arm_functions.h"
#include "dynarec_arm_helper.h"

// Get Ex as a single, not a quad, with b a intermediary double
#define GETEX(a, b) \
    if((nextop&0xC0)==0xC0) { \
        b = sse_get_reg(dyn, ninst, x1, nextop&7);  \
        a = fpu_get_scratch_double(dyn);            \
        VMOV_64(a, b);                              \
        b = a;                                      \
        a = fpu_get_scratch_single(dyn);            \
        VMOV_32(a, b*2);                            \
    } else {    \
        addr = geted(dyn, addr, ninst, nextop, &ed, x1, &fixedaddress); \
        a = fpu_get_scratch_single(dyn);            \
        VLDR_32(a, ed, 0);                          \
    }

uintptr_t dynarecF30F(dynarec_arm_t* dyn, uintptr_t addr, uintptr_t ip, int ninst, int* ok, int* need_epilog)
{
    uint8_t opcode = F8;
    uint8_t nextop, u8;
    int32_t i32, i32_;
    int16_t i16;
    uint16_t u16;
    uint8_t gd, ed;
    uint8_t wback, wb1, wb2;
    uint8_t eb1, eb2;
    int fixedaddress;
    int v0, v1;
    int s0, s1;
    int d0, d1;
    int q0, q1;
    switch(opcode) {

        case 0x10:
            INST_NAME("MOVSS Gx, Ex");
            nextop = F8;
            gd = (nextop&0x38)>>3;
            v0 = sse_get_reg(dyn, ninst, x1, gd);
            d0 = fpu_get_scratch_double(dyn);
            if((nextop&0xC0)==0xC0) {
                q0 = sse_get_reg(dyn, ninst, x1, nextop&7);
                d1 = fpu_get_scratch_double(dyn);
                VMOVD(d0, v0);
                VMOVD(d1, q0);
                VMOV_32(d0*2, d1*2);
                VMOVD(v0, d0);
            } else {
                addr = geted(dyn, addr, ninst, nextop, &ed, x1, &fixedaddress);
                LDR_IMM9(x2, ed, 0);   // to avoid bus errors
                VEORQ(v0, v0, v0);
                VMOVtoDx_32(v0, 0, x2);
            }
            break;
        case 0x11:
            INST_NAME("MOVSS Ex, Gx");
            nextop = F8;
            gd = (nextop&0x38)>>3;
            v0 = sse_get_reg(dyn, ninst, x1, gd);
            d0 = fpu_get_scratch_double(dyn);
            if((nextop&0xC0)==0xC0) {
                q0 = sse_get_reg(dyn, ninst, x1, nextop&7);
                d1 = fpu_get_scratch_double(dyn);
                VMOVD(d0, v0);
                VMOVD(d1, q0);
                VMOV_32(d1*2, d0*2);
                VMOVD(q0, d1);
            } else {
                VMOVfrDx_32(x2, v0, 0);
                addr = geted(dyn, addr, ninst, nextop, &ed, x1, &fixedaddress);
                STR_IMM9(x2, ed, 0);
            }
            break;

        case 0x2A:
            INST_NAME("CVTSI2SS Gx, Ed");
            nextop = F8;
            gd = (nextop&0x38)>>3;
            v0 = sse_get_reg(dyn, ninst, x1, gd);
            GETED;
            s0 = fpu_get_scratch_single(dyn);
            VMOVtoV(s0, ed);
            VCVT_F32_S32(s0, s0);
            d0 = fpu_get_scratch_double(dyn);
            VMOV_64(d0, v0);
            VMOV_32(d0*2, s0);
            VMOV_64(v0, d0);
            break;

        case 0x2C:
            INST_NAME("CVTTSS2SI Gd, Ex");
            nextop = F8;
            GETGD;
            s0 = fpu_get_scratch_single(dyn);
            if((nextop&0xC0)==0xC0) {
                v0 = sse_get_reg(dyn, ninst, x1, nextop&7);
                d0 = fpu_get_scratch_double(dyn);
                VMOV_64(d0, v0);
                VMOV_32(s0, d0*2);
            } else {
                addr = geted(dyn, addr, ninst, nextop, &ed, x1, &fixedaddress);
                VLDR_32(s0, ed, 0);
            }
            VCVT_S32_F32(s0, s0);
            VMOVfrV(gd, s0);
            break;
        case 0x2D:
            INST_NAME("CVTSD2SI Gd, Ex");
            u8 = x87_setround(dyn, ninst, x1, x2, x12);
            nextop = F8;
            GETGD;
            s0 = fpu_get_scratch_single(dyn);
            if((nextop&0xC0)==0xC0) {
                v0 = sse_get_reg(dyn, ninst, x1, nextop&7);
                d0 = fpu_get_scratch_double(dyn);
                VMOV_64(d0, v0);
                VMOV_32(s0, d0*2);
            } else {
                addr = geted(dyn, addr, ninst, nextop, &ed, x1, &fixedaddress);
                VLDR_32(s0, ed, 0);
            }
            VCVTR_S32_F32(s0, s0);
            VMOVfrV(gd, s0);
            x87_restoreround(dyn, ninst, u8);
            break;

        case 0x58:
            INST_NAME("ADDSS Gx, Ex");
            nextop = F8;
            gd = (nextop&0x38)>>3;
            v0 = sse_get_reg(dyn, ninst, x1, gd);
            GETEX(s0, d0);
            d1 = fpu_get_scratch_double(dyn);
            VMOV_64(d1, v0);
            VADD_F32(d1*2, d1*2, s0);
            VMOV_64(v0, d1);
            break;
        case 0x59:
            INST_NAME("MULSS Gx, Ex");
            nextop = F8;
            gd = (nextop&0x38)>>3;
            v0 = sse_get_reg(dyn, ninst, x1, gd);
            GETEX(s0, d0);
            d1 = fpu_get_scratch_double(dyn);
            VMOV_64(d1, v0);
            VMUL_F32(d1*2, d1*2, s0);
            VMOV_64(v0, d1);
            break;
        case 0x5A:
            INST_NAME("CVTSS2SD Gx, Ex");
            nextop = F8;
            gd = (nextop&0x38)>>3;
            v0 = sse_get_reg(dyn, ninst, x1, gd);
            GETEX(s0, d0);
            VCVT_F64_F32(v0, s0);
            break;
        case 0x5B:
            INST_NAME("CVTTPS2DQ Gx, Ex");
            nextop = F8;
            if((nextop&0xC0)==0xC0) {
                v1 = sse_get_reg(dyn, ninst, x1, nextop&7);
            } else {
                addr = geted(dyn, addr, ninst, nextop, &ed, x1, &fixedaddress);
                v1 = fpu_get_scratch_quad(dyn);
                VLD1Q_64(v1, ed);
            }
            gd = (nextop&0x38)>>3;
            v0 = sse_get_reg_empty(dyn, ninst, x1, gd);
            VCVTQ_S32_F32(v0, v1);
            break;
        case 0x5C:
            INST_NAME("SUBSS Gx, Ex");
            nextop = F8;
            gd = (nextop&0x38)>>3;
            v0 = sse_get_reg(dyn, ninst, x1, gd);
            GETEX(s0, d0);
            d1 = fpu_get_scratch_double(dyn);
            VMOV_64(d1, v0);
            VSUB_F32(d1*2, d1*2, s0);
            VMOV_64(v0, d1);
            break;
        case 0x5D:
            INST_NAME("MINSS Gx, Ex");
            nextop = F8;
            gd = (nextop&0x38)>>3;
            v0 = sse_get_reg(dyn, ninst, x1, gd);
            GETEX(s0, d0);
            d1 = fpu_get_scratch_double(dyn);
            VMOV_64(d1, v0);
            // MINSS: if any input is NaN, or Ex[0]<Gx[0], copy Ex[0] -> Gx[0]
            VCMP_F32(d1*2, s0);
            VMRS_APSR();
            VMOVcond_32(cPL, d1*2, s0);
            VMOV_64(v0, d1);
            break;
        case 0x5E:
            INST_NAME("DIVSS Gx, Ex");
            nextop = F8;
            gd = (nextop&0x38)>>3;
            v0 = sse_get_reg(dyn, ninst, x1, gd);
            GETEX(s0, d0);
            d1 = fpu_get_scratch_double(dyn);
            VMOV_64(d1, v0);
            VDIV_F32(d1*2, d1*2, s0);
            VMOV_64(v0, d1);
            break;
        case 0x5F:
            INST_NAME("MAXSS Gx, Ex");
            nextop = F8;
            gd = (nextop&0x38)>>3;
            v0 = sse_get_reg(dyn, ninst, x1, gd);
            GETEX(s0, d0);
            d1 = fpu_get_scratch_double(dyn);
            VMOV_64(d1, v0);
            // MAXSS: if any input is NaN, or Ex[0]>Gx[0], copy Ex[0] -> Gx[0]
            VCMP_F32(s0, d1*2);
            VMRS_APSR();
            VMOVcond_32(cPL, d1*2, s0);
            VMOV_64(v0, d1);
            break;

        case 0x6F:
            INST_NAME("MOVDQU Gx,Ex");
            nextop = F8;
            gd = (nextop&0x38)>>3;
            if((nextop&0xC0)==0xC0) {
                v1 = sse_get_reg(dyn, ninst, x1, nextop&7);
                v0 = sse_get_reg_empty(dyn, ninst, x1, gd);
                VMOVQ(v0, v1);
            } else {
                v0 = sse_get_reg_empty(dyn, ninst, x1, gd);
                addr = geted(dyn, addr, ninst, nextop, &ed, x1, &fixedaddress);
                LDRD_IMM8(x2, ed, 0);
                VMOVtoV_D(v0, x2, x3);
                LDRD_IMM8(x2, ed, 8);
                VMOVtoV_D(v0+1, x2, x3);
            }
            break;

        case 0x7E:
            INST_NAME("MOVQ Gx, Ex");
            nextop = F8;
            gd = (nextop&0x38)>>3;
            if((nextop&0xC0)==0xC0) {
                v1 = sse_get_reg(dyn, ninst, x1, nextop&7);
                v0 = sse_get_reg_empty(dyn, ninst, x1, gd);
                VMOV_64(v0, v1);
            } else {
                v0 = sse_get_reg_empty(dyn, ninst, x1, gd);
                addr = geted(dyn, addr, ninst, nextop, &ed, x1, &fixedaddress);
                VLD1_64(v0, ed);
            }
            VEOR(v0+1, v0+1, v0+1);
            break;
        case 0x7F:
            INST_NAME("MOVDQU Ex,Gx");
            nextop = F8;
            gd = (nextop&0x38)>>3;
            if((nextop&0xC0)==0xC0) {
                v1 = sse_get_reg(dyn, ninst, x1, nextop&7);
                v0 = sse_get_reg_empty(dyn, ninst, x1, gd);
                VMOVQ(v1, v0);
            } else {
                v0 = sse_get_reg_empty(dyn, ninst, x1, gd);
                addr = geted(dyn, addr, ninst, nextop, &ed, x1, &fixedaddress);
                VMOVfrV_D(x2, x3, v0);
                STRD_IMM8(x2, ed, 0);
                VMOVfrV_D(x2, x3, v0+1);
                STRD_IMM8(x2, ed, 8);
            }
            break;

        case 0xC2:
            INST_NAME("CMPSS Gx, Ex");
            nextop = F8;
            gd = (nextop&0x38)>>3;
            v0 = sse_get_reg(dyn, ninst, x1, gd);
            GETEX(s0, d0);
            d1 = fpu_get_scratch_double(dyn);
            VMOV_64(d1, v0);
            VCMP_F32(d1*2, s0);
            VMRS_APSR();
            MOVW(x2, 0);
            u8 = F8;
            switch(u8&7) {
                case 0: MVN_COND_REG_LSL_IMM8(cEQ, x2, x2, 0); break;   // Equal
                case 1: MVN_COND_REG_LSL_IMM8(cCC, x2, x2, 0); break;   // Less than
                case 2: MVN_COND_REG_LSL_IMM8(cLS, x2, x2, 0); break;   // Less or equal
                case 3: MVN_COND_REG_LSL_IMM8(cVS, x2, x2, 0); break;   // NaN
                case 4: MVN_COND_REG_LSL_IMM8(cNE, x2, x2, 0); break;   // Not Equal (or unordered on ARM, not on X86...)
                case 5: MVN_COND_REG_LSL_IMM8(cPL, x2, x2, 0); break;   // Greater or equal or unordered
                case 6: MVN_COND_REG_LSL_IMM8(cHI, x2, x2, 0); break;   // Greater or unordered
                case 7: MVN_COND_REG_LSL_IMM8(cVC, x2, x2, 0); break;   // not NaN
            }
            VMOVtoDx_32(v0, 0, x2);
            break;

        default:
            *ok = 0;
            DEFAULT;
    }
    return addr;
}

