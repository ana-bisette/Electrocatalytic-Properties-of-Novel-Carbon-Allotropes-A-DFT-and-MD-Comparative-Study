#!/bin/bash
#0.797-320

for i in "H" "O" "OH" "OOH" ; do
	scp -r ana.bisette@titanio.ufabc.int.br:/home/ana.bisette/jobs/adsorption/0.797-320/${i}_specie/${i} /home/geedai/ana.bisette/inputs_DFT/0.797-320/

done
