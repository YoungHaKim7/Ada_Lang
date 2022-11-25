#!bin/bash

gcc -c greet_5c.adb
gnatbind -x greet_5c.ali
gnatlink greet_5c.ali -o main
./main.exe

rm -rf *.ali
rm -rf *.o
