#!bin/bash

gcc -c Greet_5a_Reverse.adb
gnatbind -x greet_5a_reverse.ali
gnatlink greet_5a_reverse.ali -o main
./main.exe

rm -rf *.ali
rm -rf *.o
