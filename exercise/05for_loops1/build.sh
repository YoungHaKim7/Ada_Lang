#!bin/bash

gcc -c greet_5a.adb
gnatbind -x greet_5a.ali
gnatlink greet_5a.ali -o main
./main.exe

rm -rf *.ali
rm -rf *.o