#!bin/bash

gcc -c Greet.adb
gnatbind -x Greet.ali
gnatlink Greet.ali -o main
./main.exe

rm -rf *.ali
rm -rf *.o
