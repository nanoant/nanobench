#!/bin/bash

cd $(dirname $0)

if [ fib_test.cpp -nt fib ] || \
	 [ fib.h        -nt fib ] || \
	 [ run.sh       -nt fib ] ; then
	set -x
	c++ -std=c++11 -o fib -O2 fib.cpp fib_test.cpp
fi

exec ./fib
