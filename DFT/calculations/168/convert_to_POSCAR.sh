#!/bin/bash
#0.971-168

for i in "H" "O" "OH" "OOH" ; do
    cd /home/geedai/ana.bisette/inputs_DFT/0.971-168/${i}
    for j in {1..3} ; do
	    mkdir ${i}_${j}
	    mv ${i}_${j}.pdb ${i}_${j}
	    cd ${i}_${j}
            atomsk ${i}_${j}.pdb POSCAR
	    cd ..
    done
done

