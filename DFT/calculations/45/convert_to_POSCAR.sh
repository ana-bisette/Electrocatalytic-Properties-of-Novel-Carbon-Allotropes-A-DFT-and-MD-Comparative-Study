#!/bin/bash
#0.307-45

for i in "H" "O" "OH" "OOH" ; do
    cd /home/geedai/ana.bisette/0.307-45/${i}
    for j in {1..5} ; do
	    mkdir ${i}_${j}
	    mv ${i}_${j}.pdb ${i}_${j}
	    cd ${i}_${j}
            atomsk ${i}_${j}.pdb POSCAR
	    cd ..
    done
done

