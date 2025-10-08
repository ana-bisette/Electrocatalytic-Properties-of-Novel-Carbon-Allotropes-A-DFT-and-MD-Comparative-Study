#!/bin/bash

current="/home/madmaxiiemus/O"

for i in {1...8} ; do
	folder="/home/madmaxiiemus/O/O_$i"
	mkdir O_$i
	mv O_$i.pdb O_$i
	cd "$folder"
	atomsk O_$i.pdb POSCAR
	cd "$current"

done
