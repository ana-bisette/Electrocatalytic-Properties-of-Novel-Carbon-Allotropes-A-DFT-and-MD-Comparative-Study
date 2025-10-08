#!/bin/bash
#0.728-42

for i in "H" "O" "OH" "OOH" ; do
    cd /home/ana.bisette/jobs/adsorption/0.728-42/${i}_specie
    mkdir ${i}
    for j in {1..3} ; do
	    cp ${i}_${j}.pdb /home/ana.bisette/jobs/adsorption/0.728-42/${i}_specie/${i}
    done
done

