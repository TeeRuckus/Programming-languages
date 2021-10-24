#!/bin/sh
make clean
make
./list < test.file
make clean
