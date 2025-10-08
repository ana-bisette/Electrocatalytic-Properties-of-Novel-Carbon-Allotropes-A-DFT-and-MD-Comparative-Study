#!/bin/bash
#0.524-34

for i in "H" "O" "OH" "OOH" ; do
    cd /home/geedai/ana.bisette/inputs_DFT/0.524-34/${i}
    for j in {1..2} ; do
	    mkdir ${i}_${j}
	    mv ${i}_${j}.pdb ${i}_${j}
	    cd ${i}_${j}
            atomsk ${i}_${j}.pdb POSCAR
	    cd ..
    done
done

