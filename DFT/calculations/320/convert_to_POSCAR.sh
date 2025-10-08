#!/bin/bash
#0.797-320

for i in "H" "O" "OH" "OOH" ; do
    cd /home/geedai/ana.bisette/inputs_DFT/0.797-320/${i}
    for j in {1..10} ; do
	    mkdir ${i}_${j}
	    mv ${i}_${j}.pdb ${i}_${j}
	    cd ${i}_${j}
            atomsk ${i}_${j}.pdb POSCAR
	    cd ..
    done
done

