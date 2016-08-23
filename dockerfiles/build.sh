#!/bin/sh

set -e
echo "[build.sh:building binary]"
cd $BUILDPATH && go build -o /servicebin && rm -rf /tmp/*
echo "[build.sh:launching binary]"
/servicebin