#!bin/bash

gcc -c show_increment.adb
gnatbind -x show_increment.ali
gnatlink show_increment.ali -o show_increment
./show_increment.exe

rm -rf *.ali
rm -rf *.o
