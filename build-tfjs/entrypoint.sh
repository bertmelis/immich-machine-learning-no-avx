#!/bin/sh

cd output
git clone https://github.com/tensorflow/tensorflow.git
cd tensorflow
git checkout v2.11.0
./configure
#bazel build --config=mkl -c opt --copt=-march=native --config=monolithic //tensorflow/tools/lib_package:libtensorflow
bazel build --config=mkl -c opt --copt=-march=x86-64 --copt-mtune=generic --config=monolithic //tensorflow/tools/lib_package:libtensorflow
cp bazel-bin/tensorflow/tools/lib_package/libtensorflow.tar.gz /tensorflow/output/libtensorflow.tar.gz
