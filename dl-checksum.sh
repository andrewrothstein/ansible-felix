#!/usr/bin/env sh
VER=${1:-v3.10.0}
DIR=~/Downloads
MIRROR=https://github.com/projectcalico/felix/releases/download/$VER

dl()
{
    local arch=$1
    local url=$MIRROR/calico-felix-$arch
    local lfile=$DIR/calico-felix-$arch-$VER

    if [ ! -e $lfile ];
    then
        wget -q -O $lfile $url
    fi

    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $arch `sha256sum $lfile | awk '{print $1}'`
}

printf "  %s:\n" $VER
dl amd64
dl arm64
dl ppc64le



