#!/bin/bash

for i in {1..8} ; do
	folder="/home/ana.bisette/espresso/teste_calculators/0.559-19/O_specie/O_$i"
	cd "$folder"
	cp /home/ana.bisette/espresso/teste_calculators/0.559-19/calculators.py ..
	#python calculators.py
done
