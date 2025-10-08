#!/bin/bash

current="/home/madmaxiiemus/H"

for i in {2..8} ; do
	folder="/home/madmaxiiemus/H/H_$i"
	mkdir H_$i
	mv H_$i.pdb H_$i
	cd "$folder"
	atomsk H_$i.pdb POSCAR
	cd "$current"

done
