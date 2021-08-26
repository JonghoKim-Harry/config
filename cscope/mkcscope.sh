#!/bin/sh 
rm -rf cscope.files cscope.out
find . \( -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.h' -o -name '*.s' -o -name '*.S' \) -print > cscope.files 
$HOME/usr/bin/cscope -i cscope.files
