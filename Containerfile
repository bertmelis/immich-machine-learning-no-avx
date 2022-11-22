FROM altran1502/immich-machine-learning:release

COPY libtensorflow.tar.gz node_modules/@tensorflow/tfjs-node/deps/libtensorflow.tar.gz

RUN apt-get update && \
    apt-get -y --no-install-recommends install libomp-dev && \
    apt-get clean && \
    cd node_modules/@tensorflow/tfjs-node/deps && \
    tar -xf libtensorflow.tar.gz && \
    rm libtensorflow.tar.gz