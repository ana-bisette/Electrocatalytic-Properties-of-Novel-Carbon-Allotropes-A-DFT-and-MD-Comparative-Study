#!/bin/bash

for i in {1..8} ; do
	folder="/home/ana.bisette/espresso/teste_calculators/0.559-19/OOH_specie/OOH_$i"
	cd "$folder"
	python calculators.py
done
