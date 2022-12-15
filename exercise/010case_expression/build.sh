#!bin/bash

gcc -c main.adb
gnatbind -x main.ali
gnatlink main.ali -o main
./main.exe

rm -rf *.ali
rm -rf *.o