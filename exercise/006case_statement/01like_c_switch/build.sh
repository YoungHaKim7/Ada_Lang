#!bin/bash

gcc -c check_direction.adb
gnatbind -x check_direction.ali
gnatlink check_direction.ali -o main
./main.exe

rm -rf *.ali
rm -rf *.o