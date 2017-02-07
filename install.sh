#!/bin/sh

CWD=`pwd`
NWD=`mktemp -d`/acpi_call
cd ..
cp -R acpi_call "${NWD}"

cd "${NWD}"

make && sudo make install && sudo modprobe acpi_call && sudo make load

lsmod | grep acpi_call

cd "${CWD}"
