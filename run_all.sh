#!/usr/bin/env bash

for build_type in Debug RelWithDebInfo Release MinSizeRel
do
  for cpp_version in 98 11 14 17 20
  do
    cmake -H. -Bcmake-build-$build_type-$cpp_version -DCMAKE_BUILD_TYPE=$build_type -DCPP_VERSION=$cpp_version
    cmake --build cmake-build-$build_type-$cpp_version
    . "cmake-build-$build_type-$cpp_version/disassemble.sh"
  done
done
