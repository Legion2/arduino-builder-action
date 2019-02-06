#!/bin/sh
set -e

if [ -z "$SKETCH_DIRECTORY_PATH" ]; then
    SKETCH_DIRECTORY_PATH="${GITHUB_WORKSPACE}/examples/"
fi

if [ -z "$BOARD_NAME" ]; then
    BOARD_NAME="arduino:avr:uno"
fi

if [ -z "$LIBRARIES_PATH" ]; then
    LIBRARIES_PATH="${GITHUB_WORKSPACE}/libraries/"
    if [ ! -d "$LIBRARIES_PATH" ]; then
        LIBRARIES_PATH=$GITHUB_WORKSPACE
    fi
fi

cd /opt/arduino
for sketch in `find "${SKETCH_DIRECTORY_PATH}" -name '*.ino'`
do
    if [ -z "$1" ]; then
        ./arduino-builder -hardware ./hardware -tools ./hardware/tools/avr -tools ./tools-builder -libraries ./libraries -libraries $LIBRARIES_PATH -libraries $GITHUB_WORKSPACE/../ -fqbn $BOARD_NAME $sketch
    else
        ./arduino-builder $@ $sketch
    fi
done
