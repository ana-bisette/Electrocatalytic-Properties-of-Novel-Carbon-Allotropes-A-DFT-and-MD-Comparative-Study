#!/bin/bash
#0.960-258

for i in "H" "O" "OH" "OOH" ; do
    cd /home/ana.bisette/jobs/adsorption/0.960-258/${i}_specie
    mkdir ${i}
    for j in {1..6} ; do
	    cp ${i}_${j}.pdb /home/ana.bisette/jobs/adsorption/0.960-258/${i}_specie/${i}
    done
done

