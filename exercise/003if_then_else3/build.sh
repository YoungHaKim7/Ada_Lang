#!bin/bash

gcc -c check_positive.adb
gnatbind -x check_positive.ali
gnatlink check_positive.ali -o main
./main.exe

rm -rf *.ali
rm -rf *.o