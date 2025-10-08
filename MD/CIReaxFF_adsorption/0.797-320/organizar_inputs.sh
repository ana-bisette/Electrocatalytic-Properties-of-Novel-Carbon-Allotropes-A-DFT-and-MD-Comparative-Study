#!/bin/bash
#0.797-320

for i in "H" "O" "OH" "OOH" ; do
    cd /home/ana.bisette/jobs/adsorption/0.797-320/${i}_specie
    mkdir ${i}
    for j in {1..10} ; do
	    cp ${i}_${j}.pdb /home/ana.bisette/jobs/adsorption/0.797-320/${i}_specie/${i}
    done
done

