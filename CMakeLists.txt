cmake_minimum_required(VERSION 3.7)
project(fluffy-adventure)

set(CMAKE_CXX_STANDARD ${CPP_VERSION})

add_executable(goto main_goto.cpp)
add_executable(while main_while.cpp)

configure_file(disassemble.sh.in disassemble.sh @ONLY)

#objdump -d goto > goto.disassembly
#objdump -d while > while.disassembly
