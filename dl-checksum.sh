#!/usr/bin/env sh
DIR=~/Downloads
APP=felix
MIRROR=https://github.com/projectcalico/${APP}/releases/download

dl()
{
    local ver=$1
    local arch=$2
    local url=$MIRROR/$ver/calico-${APP}-$arch
    local lfile=$DIR/calico-${ARCH}-$arch-$ver

    if [ ! -e $lfile ];
    then
        wget -q -O $lfile $url
    fi

    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $arch `sha256sum $lfile | awk '{print $1}'`
}

dl_ver() {
    local ver=$1
    printf "  %s:\n" $ver
    dl $ver amd64
    dl $ver arm64
    dl $ver ppc64le
}

dl_ver ${1:-v3.10.2}
