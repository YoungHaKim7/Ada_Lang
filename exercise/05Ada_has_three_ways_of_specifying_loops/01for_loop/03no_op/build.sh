#!bin/bash

gcc -c greet_no_op.adb
gnatbind -x greet_no_op.ali
gnatlink greet_5a_Reverse.ali -o main
./main.exe

rm -rf *.ali
rm -rf *.o
