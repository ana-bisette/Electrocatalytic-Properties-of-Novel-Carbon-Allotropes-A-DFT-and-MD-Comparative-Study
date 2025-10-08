#!/bin/bash
#0.604-50

for i in "H" "O" "OH" "OOH" ; do
	scp -r ana.bisette@titanio.ufabc.int.br:/home/ana.bisette/jobs/adsorption/0.604-50/${i}_specie/${i} /home/geedai/ana.bisette/inputs_DFT/0.604-50/

done
