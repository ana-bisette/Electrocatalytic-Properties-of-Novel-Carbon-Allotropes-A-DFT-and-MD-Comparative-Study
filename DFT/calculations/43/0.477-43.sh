#!/bin/bash
#0.477-43

for i in "H" "O" "OH" "OOH" ; do
	scp -r ana.bisette@titanio.ufabc.int.br:/home/ana.bisette/jobs/adsorption/0.477-43/${i}_specie/${i} /home/geedai/ana.bisette/inputs_DFT/0.477-43/

done
