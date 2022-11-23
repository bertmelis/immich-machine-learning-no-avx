# Immich machine learning for x86 without AVX

## Usage

Find your immich docker-compose file and replace

`image: altran1502/immich-machine-learning:release`

by

`image: bertmelis1/immich-machine-learning-noavx:release`

## What is this?

Immich is a high performance self-hosted photo and video backup solution.
For image classification, Immich relies on Tensorflow. Tensorflow is by standard built for 'newer' processors that support AVX. People that run Immich on older systems have to option to just not run the immage classification container or use this alternative.

## Links

https://immich.app/
https://github.com/immich-app/immich

## Last words

- As is Immich, this repo is published under the MIT license.
- The generated image is by far not optimized and is probably much larger than the original immich-machine-learning image. Feel free to create PRs to improve.
- I follow the Immich release schedule but do this manually. Some delay is to be expected, especially when new Tensorflow binaries are needed.
