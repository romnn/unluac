#! /bin/bash

DIR="$( dirname "$0" )"
JAVA_FLAGS="-deprecation -Werror"

if [ ! -d "$DIR/build" ]; then
  mkdir $DIR/build
fi

javac $JAVA_FLAGS -d $DIR/build -sourcepath $DIR/src $DIR/src/unluac/*.java

jar -cmvf src/unluac/Manifest.mf unluac.jar  -C build .
