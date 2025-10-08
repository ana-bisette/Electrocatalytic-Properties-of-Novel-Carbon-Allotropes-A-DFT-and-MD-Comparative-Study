#!/bin/bash
#0.307-45

for x in "H" "O" "OH" "OOH" ; do
    specie="/home/ana.bisette/jobs/adsorption/0.307-45/${x}_specie"
    for i in {1..5} ; do
	    #echo "Checking for file: ${x}_${i}.pdb"
	    #echo "Specie path: $specie"
	    #echo "Looking for: $specie/${x}_${i}.pdb"
	    scp -o -P 9998 -r  ana.bisette@titanio.ufabc.int.br::$specie/${x}_${i}.pdb/ /home/geedai/ana.bisette/0.307-45
	done
done
