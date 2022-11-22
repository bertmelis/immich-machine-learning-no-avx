#!/bin/sh

cd output
git clone https://github.com/tensorflow/tensorflow.git
if cd tensorflow
  then git pull
else
  git clone https://github.com/tensorflow/tensorflow.git
  cd tensorflow
fi
git checkout v3.19.0
./configure
bazel build --config=mkl -c opt --copt=-march=native --config=monolithic //tensorflow/tools/lib_package:libtensorflow
cp bazel-bin/tensorflow/tools/lib_package/libtensorflow.tar.gz /tensorflow/output/libtensorflow.tar.gz