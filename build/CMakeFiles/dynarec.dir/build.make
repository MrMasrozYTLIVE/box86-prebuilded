# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu/box86

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/box86/build

# Include any dependencies generated for this target.
include CMakeFiles/dynarec.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/dynarec.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dynarec.dir/flags.make

# Object files for target dynarec
dynarec_OBJECTS =

# External object files for target dynarec
dynarec_EXTERNAL_OBJECTS = \
"/home/ubuntu/box86/build/CMakeFiles/dynarec_arm.dir/src/dynarec/dynablock.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/dynarec_arm.dir/src/dynarec/dynarec_arm.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/dynarec_arm.dir/src/dynarec/dynarec_arm_functions.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/dynarec_arm.dir/src/dynarec/arm_printer.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/dynarec_arm.dir/src/dynarec/arm_prolog.S.o" \
"/home/ubuntu/box86/build/CMakeFiles/dynarec_arm.dir/src/dynarec/arm_epilog.S.o" \
"/home/ubuntu/box86/build/CMakeFiles/dynarec_arm.dir/src/dynarec/arm_next.S.o" \
"/home/ubuntu/box86/build/CMakeFiles/dynarec_arm.dir/src/dynarec/arm_lock_helper.S.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_helper.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_tests.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_math.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_logic.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_shift.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_pass.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_00.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_0f.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_64.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_65.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_66.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_67.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_d8.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_d9.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_da.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_db.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_dc.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_dd.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_de.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_df.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f0.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_660f.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_66f0.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f20f.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f30f.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_helper.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_emit_tests.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_emit_math.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_emit_logic.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_emit_shift.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_pass.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_00.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_0f.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_64.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_65.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_66.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_67.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_d8.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_d9.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_da.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_db.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_dc.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_dd.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_de.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_df.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_f0.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_660f.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_66f0.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_f20f.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_f30f.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_helper.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_emit_tests.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_emit_math.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_emit_logic.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_emit_shift.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_pass.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_00.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_0f.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_64.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_65.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_66.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_67.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_d8.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_d9.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_da.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_db.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_dc.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_dd.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_de.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_df.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_f0.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_660f.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_66f0.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_f20f.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_f30f.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_helper.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_emit_tests.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_emit_math.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_emit_logic.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_emit_shift.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_pass.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_00.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_0f.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_64.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_65.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_66.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_67.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_d8.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_d9.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_da.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_db.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_dc.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_dd.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_de.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_df.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_f0.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_660f.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_66f0.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_f20f.c.o" \
"/home/ubuntu/box86/build/CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_f30f.c.o"

libdynarec.a: CMakeFiles/dynarec_arm.dir/src/dynarec/dynablock.c.o
libdynarec.a: CMakeFiles/dynarec_arm.dir/src/dynarec/dynarec_arm.c.o
libdynarec.a: CMakeFiles/dynarec_arm.dir/src/dynarec/dynarec_arm_functions.c.o
libdynarec.a: CMakeFiles/dynarec_arm.dir/src/dynarec/arm_printer.c.o
libdynarec.a: CMakeFiles/dynarec_arm.dir/src/dynarec/arm_prolog.S.o
libdynarec.a: CMakeFiles/dynarec_arm.dir/src/dynarec/arm_epilog.S.o
libdynarec.a: CMakeFiles/dynarec_arm.dir/src/dynarec/arm_next.S.o
libdynarec.a: CMakeFiles/dynarec_arm.dir/src/dynarec/arm_lock_helper.S.o
libdynarec.a: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_helper.c.o
libdynarec.a: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_tests.c.o
libdynarec.a: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_math.c.o
libdynarec.a: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_logic.c.o
libdynarec.a: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_shift.c.o
libdynarec.a: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_pass.c.o
libdynarec.a: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_00.c.o
libdynarec.a: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_0f.c.o
libdynarec.a: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_64.c.o
libdynarec.a: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_65.c.o
libdynarec.a: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_66.c.o
libdynarec.a: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_67.c.o
libdynarec.a: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_d8.c.o
libdynarec.a: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_d9.c.o
libdynarec.a: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_da.c.o
libdynarec.a: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_db.c.o
libdynarec.a: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_dc.c.o
libdynarec.a: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_dd.c.o
libdynarec.a: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_de.c.o
libdynarec.a: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_df.c.o
libdynarec.a: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f0.c.o
libdynarec.a: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_660f.c.o
libdynarec.a: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_66f0.c.o
libdynarec.a: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f20f.c.o
libdynarec.a: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f30f.c.o
libdynarec.a: CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_helper.c.o
libdynarec.a: CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_emit_tests.c.o
libdynarec.a: CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_emit_math.c.o
libdynarec.a: CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_emit_logic.c.o
libdynarec.a: CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_emit_shift.c.o
libdynarec.a: CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_pass.c.o
libdynarec.a: CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_00.c.o
libdynarec.a: CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_0f.c.o
libdynarec.a: CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_64.c.o
libdynarec.a: CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_65.c.o
libdynarec.a: CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_66.c.o
libdynarec.a: CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_67.c.o
libdynarec.a: CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_d8.c.o
libdynarec.a: CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_d9.c.o
libdynarec.a: CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_da.c.o
libdynarec.a: CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_db.c.o
libdynarec.a: CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_dc.c.o
libdynarec.a: CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_dd.c.o
libdynarec.a: CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_de.c.o
libdynarec.a: CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_df.c.o
libdynarec.a: CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_f0.c.o
libdynarec.a: CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_660f.c.o
libdynarec.a: CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_66f0.c.o
libdynarec.a: CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_f20f.c.o
libdynarec.a: CMakeFiles/arm_pass1.dir/src/dynarec/dynarec_arm_f30f.c.o
libdynarec.a: CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_helper.c.o
libdynarec.a: CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_emit_tests.c.o
libdynarec.a: CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_emit_math.c.o
libdynarec.a: CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_emit_logic.c.o
libdynarec.a: CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_emit_shift.c.o
libdynarec.a: CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_pass.c.o
libdynarec.a: CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_00.c.o
libdynarec.a: CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_0f.c.o
libdynarec.a: CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_64.c.o
libdynarec.a: CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_65.c.o
libdynarec.a: CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_66.c.o
libdynarec.a: CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_67.c.o
libdynarec.a: CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_d8.c.o
libdynarec.a: CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_d9.c.o
libdynarec.a: CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_da.c.o
libdynarec.a: CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_db.c.o
libdynarec.a: CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_dc.c.o
libdynarec.a: CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_dd.c.o
libdynarec.a: CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_de.c.o
libdynarec.a: CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_df.c.o
libdynarec.a: CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_f0.c.o
libdynarec.a: CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_660f.c.o
libdynarec.a: CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_66f0.c.o
libdynarec.a: CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_f20f.c.o
libdynarec.a: CMakeFiles/arm_pass2.dir/src/dynarec/dynarec_arm_f30f.c.o
libdynarec.a: CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_helper.c.o
libdynarec.a: CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_emit_tests.c.o
libdynarec.a: CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_emit_math.c.o
libdynarec.a: CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_emit_logic.c.o
libdynarec.a: CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_emit_shift.c.o
libdynarec.a: CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_pass.c.o
libdynarec.a: CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_00.c.o
libdynarec.a: CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_0f.c.o
libdynarec.a: CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_64.c.o
libdynarec.a: CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_65.c.o
libdynarec.a: CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_66.c.o
libdynarec.a: CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_67.c.o
libdynarec.a: CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_d8.c.o
libdynarec.a: CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_d9.c.o
libdynarec.a: CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_da.c.o
libdynarec.a: CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_db.c.o
libdynarec.a: CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_dc.c.o
libdynarec.a: CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_dd.c.o
libdynarec.a: CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_de.c.o
libdynarec.a: CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_df.c.o
libdynarec.a: CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_f0.c.o
libdynarec.a: CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_660f.c.o
libdynarec.a: CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_66f0.c.o
libdynarec.a: CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_f20f.c.o
libdynarec.a: CMakeFiles/arm_pass3.dir/src/dynarec/dynarec_arm_f30f.c.o
libdynarec.a: CMakeFiles/dynarec.dir/build.make
libdynarec.a: CMakeFiles/dynarec.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/box86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking C static library libdynarec.a"
	$(CMAKE_COMMAND) -P CMakeFiles/dynarec.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dynarec.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dynarec.dir/build: libdynarec.a

.PHONY : CMakeFiles/dynarec.dir/build

CMakeFiles/dynarec.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dynarec.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dynarec.dir/clean

CMakeFiles/dynarec.dir/depend:
	cd /home/ubuntu/box86/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/box86 /home/ubuntu/box86 /home/ubuntu/box86/build /home/ubuntu/box86/build /home/ubuntu/box86/build/CMakeFiles/dynarec.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/dynarec.dir/depend

