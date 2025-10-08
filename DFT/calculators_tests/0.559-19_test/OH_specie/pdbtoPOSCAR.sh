#!/bin/bash

current="/home/madmaxiiemus/OH"

for i in {1..8} ; do
	folder="/home/madmaxiiemus/OH/OH_$i"
	mkdir OH_$i
	mv OH_$i.pdb OH_$i
	cd "$folder"
	atomsk OH_$i.pdb POSCAR
	cd "$current"

done
