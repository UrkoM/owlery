#!/bin/sh

TARGET=$1

if [ -z $TARGET ] ; then
    echo $(curl -s https://api.github.com/repos/phenoscape/owlery/releases/latest | grep tarball_url | cut -d\" -f4)
else
    echo "https://api.github.com/repos/phenoscape/owlery/tarball/$TARGET"
fi
