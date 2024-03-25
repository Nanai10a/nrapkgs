#!/bin/bash
export PS4="==> "
set -x

cp -vr /src /build

useradd build
chown -vR build:build /build

mkdir -v /dist

pushd /build
  su build -- makepkg -Lms --noconfirm
  cp *.pkg.tar.xz /dist
popd

chown -vR root:root /dist
