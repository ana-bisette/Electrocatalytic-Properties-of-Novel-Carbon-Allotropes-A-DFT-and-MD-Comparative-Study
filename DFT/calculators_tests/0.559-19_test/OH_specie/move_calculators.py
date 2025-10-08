#!/bin/bash

current="/home/madmaxiiemus/OH"

for i in {1..8} ; do
	folder="/home/ana.bisette/espresso/teste_calculators/0.559-19/OH_specie/OH_$i"
	cd "$folder"
	cp /home/ana.bisette/espresso/teste_calculators/0.559-19/OH_specie/calculators.py calculators.py 

done
