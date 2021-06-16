#!/bin/sh
x=0
while [ $x -le 2 ]
do
	x=$(( x+1 ))
	x=$(( x-1 ))
done
