#!/bin/bash

current="/home/madmaxiiemus/OOH"

for i in {1..8} ; do
	folder="/home/madmaxiiemus/OOH/OOH_$i"
	mkdir OOH_$i
	mv OOH_$i.pdb OOH_$i
	cd "$folder"
	atomsk OOH_$i.pdb POSCAR
	cd "$current"

done
