#!/bin/bash

if [ -d "tools/build" ]
then
  echo "build directory found"
else
  echo "make build directory"
  mkdir "tools/build"
fi

# Change to 'build' directory
cd "tools/build"

# CMake
cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug ../

# Make
make

# Install
make install
