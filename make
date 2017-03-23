#!/bin/bash

build() {
    mkdir -p build
    pacstrap -d build
    cp setup.sh build
    arch-chroot build /setup.sh
    rm -f build/setup.sh
    cp docker_run.sh build
    docker build --tag jure/mediawiki:1 .
}

clean() {
    rm -rf build
}

$1
