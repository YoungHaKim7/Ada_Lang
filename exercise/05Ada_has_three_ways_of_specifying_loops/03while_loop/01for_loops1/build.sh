#!bin/bash

gcc -c greet_5b.adb
gnatbind -x greet_5b.ali
gnatlink greet_5b.ali -o main
./main.exe

rm -rf *.ali
rm -rf *.o
