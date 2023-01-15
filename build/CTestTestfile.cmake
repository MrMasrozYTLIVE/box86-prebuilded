# CMake generated Testfile for 
# Source directory: /mnt/server/box86-prebuilded
# Build directory: /mnt/server/box86-prebuilded/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(bootSyscall "/usr/bin/cmake" "-D" "TEST_PROGRAM=/mnt/server/box86-prebuilded/build/box86" "-D" "TEST_ARGS=/mnt/server/box86-prebuilded/tests/test01" "-D" "TEST_OUTPUT=tmpfile01.txt" "-D" "TEST_REFERENCE=/mnt/server/box86-prebuilded/tests/ref01.txt" "-P" "/mnt/server/box86-prebuilded/runTest.cmake")
set_tests_properties(bootSyscall PROPERTIES  _BACKTRACE_TRIPLES "/mnt/server/box86-prebuilded/CMakeLists.txt;687;add_test;/mnt/server/box86-prebuilded/CMakeLists.txt;0;")
add_test(bootSyscallC "/usr/bin/cmake" "-D" "TEST_PROGRAM=/mnt/server/box86-prebuilded/build/box86" "-D" "TEST_ARGS=/mnt/server/box86-prebuilded/tests/test02" "-D" "TEST_OUTPUT=tmpfile02.txt" "-D" "TEST_REFERENCE=/mnt/server/box86-prebuilded/tests/ref02.txt" "-P" "/mnt/server/box86-prebuilded/runTest.cmake")
set_tests_properties(bootSyscallC PROPERTIES  _BACKTRACE_TRIPLES "/mnt/server/box86-prebuilded/CMakeLists.txt;692;add_test;/mnt/server/box86-prebuilded/CMakeLists.txt;0;")
add_test(printf "/usr/bin/cmake" "-D" "TEST_PROGRAM=/mnt/server/box86-prebuilded/build/box86" "-D" "TEST_ARGS=/mnt/server/box86-prebuilded/tests/test03" "-D" "TEST_OUTPUT=tmpfile03.txt" "-D" "TEST_REFERENCE=/mnt/server/box86-prebuilded/tests/ref03.txt" "-P" "/mnt/server/box86-prebuilded/runTest.cmake")
set_tests_properties(printf PROPERTIES  _BACKTRACE_TRIPLES "/mnt/server/box86-prebuilded/CMakeLists.txt;697;add_test;/mnt/server/box86-prebuilded/CMakeLists.txt;0;")
add_test(args "/usr/bin/cmake" "-D" "TEST_PROGRAM=/mnt/server/box86-prebuilded/build/box86" "-D" "TEST_ARGS=/mnt/server/box86-prebuilded/tests/test04" "-D" "TEST_ARGS2=yeah" "-D" "TEST_OUTPUT=tmpfile04.txt" "-D" "TEST_REFERENCE=/mnt/server/box86-prebuilded/tests/ref04.txt" "-P" "/mnt/server/box86-prebuilded/runTest.cmake")
set_tests_properties(args PROPERTIES  _BACKTRACE_TRIPLES "/mnt/server/box86-prebuilded/CMakeLists.txt;702;add_test;/mnt/server/box86-prebuilded/CMakeLists.txt;0;")
add_test(maths1 "/usr/bin/cmake" "-D" "TEST_PROGRAM=/mnt/server/box86-prebuilded/build/box86" "-D" "TEST_ARGS=/mnt/server/box86-prebuilded/tests/test05" "-D" "TEST_ARGS2=7" "-D" "TEST_OUTPUT=tmpfile05.txt" "-D" "TEST_REFERENCE=/mnt/server/box86-prebuilded/tests/ref05.txt" "-P" "/mnt/server/box86-prebuilded/runTest.cmake")
set_tests_properties(maths1 PROPERTIES  _BACKTRACE_TRIPLES "/mnt/server/box86-prebuilded/CMakeLists.txt;707;add_test;/mnt/server/box86-prebuilded/CMakeLists.txt;0;")
add_test(threadsStart "/usr/bin/cmake" "-D" "TEST_PROGRAM=/mnt/server/box86-prebuilded/build/box86" "-D" "TEST_ARGS=/mnt/server/box86-prebuilded/tests/test06" "-D" "TEST_OUTPUT=tmpfile06.txt" "-D" "TEST_REFERENCE=/mnt/server/box86-prebuilded/tests/ref06.txt" "-P" "/mnt/server/box86-prebuilded/runTest.cmake")
set_tests_properties(threadsStart PROPERTIES  _BACKTRACE_TRIPLES "/mnt/server/box86-prebuilded/CMakeLists.txt;712;add_test;/mnt/server/box86-prebuilded/CMakeLists.txt;0;")
add_test(trig "/usr/bin/cmake" "-D" "TEST_PROGRAM=/mnt/server/box86-prebuilded/build/box86" "-D" "TEST_ARGS=/mnt/server/box86-prebuilded/tests/test07" "-D" "TEST_OUTPUT=tmpfile07.txt" "-D" "TEST_REFERENCE=/mnt/server/box86-prebuilded/tests/ref07.txt" "-P" "/mnt/server/box86-prebuilded/runTest.cmake")
set_tests_properties(trig PROPERTIES  _BACKTRACE_TRIPLES "/mnt/server/box86-prebuilded/CMakeLists.txt;717;add_test;/mnt/server/box86-prebuilded/CMakeLists.txt;0;")
add_test(pi "/usr/bin/cmake" "-D" "TEST_PROGRAM=/mnt/server/box86-prebuilded/build/box86" "-D" "TEST_ARGS=/mnt/server/box86-prebuilded/tests/test08" "-D" "TEST_OUTPUT=tmpfile08.txt" "-D" "TEST_REFERENCE=/mnt/server/box86-prebuilded/tests/ref08.txt" "-P" "/mnt/server/box86-prebuilded/runTest.cmake")
set_tests_properties(pi PROPERTIES  _BACKTRACE_TRIPLES "/mnt/server/box86-prebuilded/CMakeLists.txt;722;add_test;/mnt/server/box86-prebuilded/CMakeLists.txt;0;")
add_test(fork "/usr/bin/cmake" "-D" "TEST_PROGRAM=/mnt/server/box86-prebuilded/build/box86" "-D" "TEST_ARGS=/mnt/server/box86-prebuilded/tests/test09" "-D" "TEST_OUTPUT=tmpfile09.txt" "-D" "TEST_REFERENCE=/mnt/server/box86-prebuilded/tests/ref09.txt" "-P" "/mnt/server/box86-prebuilded/runTest.cmake")
set_tests_properties(fork PROPERTIES  _BACKTRACE_TRIPLES "/mnt/server/box86-prebuilded/CMakeLists.txt;727;add_test;/mnt/server/box86-prebuilded/CMakeLists.txt;0;")
add_test(cppThreads "/usr/bin/cmake" "-D" "TEST_PROGRAM=/mnt/server/box86-prebuilded/build/box86" "-D" "TEST_ARGS=/mnt/server/box86-prebuilded/tests/test10" "-D" "TEST_OUTPUT=tmpfile10.txt" "-D" "TEST_REFERENCE=/mnt/server/box86-prebuilded/tests/ref10.txt" "-P" "/mnt/server/box86-prebuilded/runTest.cmake")
set_tests_properties(cppThreads PROPERTIES  _BACKTRACE_TRIPLES "/mnt/server/box86-prebuilded/CMakeLists.txt;732;add_test;/mnt/server/box86-prebuilded/CMakeLists.txt;0;")
add_test(tlsData "/usr/bin/cmake" "-D" "TEST_PROGRAM=/mnt/server/box86-prebuilded/build/box86" "-D" "TEST_ARGS=/mnt/server/box86-prebuilded/tests/test11" "-D" "TEST_OUTPUT=tmpfile11.txt" "-D" "TEST_REFERENCE=/mnt/server/box86-prebuilded/tests/ref11.txt" "-P" "/mnt/server/box86-prebuilded/runTest.cmake")
set_tests_properties(tlsData PROPERTIES  _BACKTRACE_TRIPLES "/mnt/server/box86-prebuilded/CMakeLists.txt;737;add_test;/mnt/server/box86-prebuilded/CMakeLists.txt;0;")
add_test(fpu "/usr/bin/cmake" "-D" "TEST_PROGRAM=/mnt/server/box86-prebuilded/build/box86" "-D" "TEST_ARGS=/mnt/server/box86-prebuilded/tests/test12" "-D" "TEST_OUTPUT=tmpfile12.txt" "-D" "TEST_REFERENCE=/mnt/server/box86-prebuilded/tests/ref12.txt" "-P" "/mnt/server/box86-prebuilded/runTest.cmake")
set_tests_properties(fpu PROPERTIES  _BACKTRACE_TRIPLES "/mnt/server/box86-prebuilded/CMakeLists.txt;742;add_test;/mnt/server/box86-prebuilded/CMakeLists.txt;0;")
add_test(contexts "/usr/bin/cmake" "-D" "TEST_PROGRAM=/mnt/server/box86-prebuilded/build/box86" "-D" "TEST_ARGS=/mnt/server/box86-prebuilded/tests/test13" "-D" "TEST_OUTPUT=tmpfile13.txt" "-D" "TEST_REFERENCE=/mnt/server/box86-prebuilded/tests/ref13.txt" "-P" "/mnt/server/box86-prebuilded/runTest.cmake")
set_tests_properties(contexts PROPERTIES  _BACKTRACE_TRIPLES "/mnt/server/box86-prebuilded/CMakeLists.txt;747;add_test;/mnt/server/box86-prebuilded/CMakeLists.txt;0;")
add_test(conditionalThreads "/usr/bin/cmake" "-D" "TEST_PROGRAM=/mnt/server/box86-prebuilded/build/box86" "-D" "TEST_ARGS=/mnt/server/box86-prebuilded/tests/test14" "-D" "TEST_OUTPUT=tmpfile14.txt" "-D" "TEST_REFERENCE=/mnt/server/box86-prebuilded/tests/ref14.txt" "-P" "/mnt/server/box86-prebuilded/runTest.cmake")
set_tests_properties(conditionalThreads PROPERTIES  _BACKTRACE_TRIPLES "/mnt/server/box86-prebuilded/CMakeLists.txt;753;add_test;/mnt/server/box86-prebuilded/CMakeLists.txt;0;")
add_test(linkingIndirectNoversion "/usr/bin/cmake" "-D" "TEST_PROGRAM=/mnt/server/box86-prebuilded/build/box86" "-D" "TEST_ARGS=/mnt/server/box86-prebuilded/tests/test15" "-D" "TEST_OUTPUT=tmpfile15.txt" "-D" "TEST_REFERENCE=/mnt/server/box86-prebuilded/tests/ref15.txt" "-P" "/mnt/server/box86-prebuilded/runTest.cmake")
set_tests_properties(linkingIndirectNoversion PROPERTIES  _BACKTRACE_TRIPLES "/mnt/server/box86-prebuilded/CMakeLists.txt;759;add_test;/mnt/server/box86-prebuilded/CMakeLists.txt;0;")
add_test(linkingIndirectVersion "/usr/bin/cmake" "-D" "TEST_PROGRAM=/mnt/server/box86-prebuilded/build/box86" "-D" "TEST_ARGS=/mnt/server/box86-prebuilded/tests/test16" "-D" "TEST_OUTPUT=tmpfile16.txt" "-D" "TEST_REFERENCE=/mnt/server/box86-prebuilded/tests/ref16.txt" "-P" "/mnt/server/box86-prebuilded/runTest.cmake")
set_tests_properties(linkingIndirectVersion PROPERTIES  _BACKTRACE_TRIPLES "/mnt/server/box86-prebuilded/CMakeLists.txt;764;add_test;/mnt/server/box86-prebuilded/CMakeLists.txt;0;")
add_test(sse "/usr/bin/cmake" "-D" "TEST_PROGRAM=/mnt/server/box86-prebuilded/build/box86" "-D" "TEST_ARGS=/mnt/server/box86-prebuilded/tests/test17" "-D" "TEST_OUTPUT=tmpfile17.txt" "-D" "TEST_REFERENCE=/mnt/server/box86-prebuilded/tests/ref17.txt" "-P" "/mnt/server/box86-prebuilded/runTest.cmake")
set_tests_properties(sse PROPERTIES  ENVIRONMENT "BOX86_DYNAREC_FASTNAN=0" _BACKTRACE_TRIPLES "/mnt/server/box86-prebuilded/CMakeLists.txt;769;add_test;/mnt/server/box86-prebuilded/CMakeLists.txt;0;")
add_test(longjumpInSignals "/usr/bin/cmake" "-D" "TEST_PROGRAM=/mnt/server/box86-prebuilded/build/box86" "-D" "TEST_ARGS=/mnt/server/box86-prebuilded/tests/test18" "-D" "TEST_OUTPUT=tmpfile18.txt" "-D" "TEST_REFERENCE=/mnt/server/box86-prebuilded/tests/ref18.txt" "-P" "/mnt/server/box86-prebuilded/runTest.cmake")
set_tests_properties(longjumpInSignals PROPERTIES  _BACKTRACE_TRIPLES "/mnt/server/box86-prebuilded/CMakeLists.txt;776;add_test;/mnt/server/box86-prebuilded/CMakeLists.txt;0;")
add_test(x87 "/usr/bin/cmake" "-D" "TEST_PROGRAM=/mnt/server/box86-prebuilded/build/box86" "-D" "TEST_ARGS=/mnt/server/box86-prebuilded/tests/test19" "-D" "TEST_OUTPUT=tmpfile19.txt" "-D" "TEST_REFERENCE=/mnt/server/box86-prebuilded/tests/ref19.txt" "-P" "/mnt/server/box86-prebuilded/runTest.cmake")
set_tests_properties(x87 PROPERTIES  _BACKTRACE_TRIPLES "/mnt/server/box86-prebuilded/CMakeLists.txt;781;add_test;/mnt/server/box86-prebuilded/CMakeLists.txt;0;")
add_test(idiv "/usr/bin/cmake" "-D" "TEST_PROGRAM=/mnt/server/box86-prebuilded/build/box86" "-D" "TEST_ARGS=/mnt/server/box86-prebuilded/tests/test20" "-D" "TEST_OUTPUT=tmpfile20.txt" "-D" "TEST_REFERENCE=/mnt/server/box86-prebuilded/tests/ref20.txt" "-P" "/mnt/server/box86-prebuilded/runTest.cmake")
set_tests_properties(idiv PROPERTIES  _BACKTRACE_TRIPLES "/mnt/server/box86-prebuilded/CMakeLists.txt;786;add_test;/mnt/server/box86-prebuilded/CMakeLists.txt;0;")
add_test(mmx "/usr/bin/cmake" "-D" "TEST_PROGRAM=/mnt/server/box86-prebuilded/build/box86" "-D" "TEST_ARGS=/mnt/server/box86-prebuilded/tests/extensions/mmx" "-D" "TEST_OUTPUT=tmpfile-mmx.txt" "-D" "TEST_REFERENCE=/mnt/server/box86-prebuilded/tests/extensions/mmx.txt" "-P" "/mnt/server/box86-prebuilded/runTest.cmake")
set_tests_properties(mmx PROPERTIES  _BACKTRACE_TRIPLES "/mnt/server/box86-prebuilded/CMakeLists.txt;794;add_test;/mnt/server/box86-prebuilded/CMakeLists.txt;0;")