#!/usr/bin/env sh
VER=v3.8.0
DIR=~/Downloads
MIRROR=https://github.com/projectcalico/felix/releases/download/$VER

dl()
{
    PLATFORM=$1
    URL=$MIRROR/calico-felix-$PLATFORM
    LFILE=$DIR/calico-felix-$PLATFORM-$VER

    if [ ! -e $LFILE ];
    then
        wget -q -O $LFILE $URL
    fi

    printf "    # %s\n" $URL
    printf "    %s: sha256:%s\n" $PLATFORM `sha256sum $LFILE | awk '{print $1}'`
}

printf "  %s:\n" $VER
dl amd64
dl arm64
dl ppc64le



