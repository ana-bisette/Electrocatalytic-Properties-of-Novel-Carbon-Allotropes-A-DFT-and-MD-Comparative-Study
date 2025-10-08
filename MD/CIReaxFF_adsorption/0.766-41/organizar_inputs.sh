#!/bin/bash
#0.766-41/

for i in "H" "O" "OH" "OOH" ; do
    cd /home/ana.bisette/jobs/adsorption/0.766-41//${i}_specie
    mkdir ${i}
    for j in {1..24} ; do
	    cp ${i}_${j}.pdb /home/ana.bisette/jobs/adsorption/0.766-41/${i}_specie/${i}
    done
done

