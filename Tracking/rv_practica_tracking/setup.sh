#!/bin/bash

rm -rf build

cmake -S . -B build \
    -DOpenCV_DIR=/usr/lib/cmake/opencv4 \
    -DCMAKE_CXX_FLAGS="-I/usr/include/opencv4"

cmake --build build -j$(nproc)
