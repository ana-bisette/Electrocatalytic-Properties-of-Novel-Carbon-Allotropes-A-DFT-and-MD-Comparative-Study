#!/bin/bash
#0.524-34

for i in "H" "O" "OH" "OOH" ; do
	scp -r ana.bisette@titanio.ufabc.int.br:/home/ana.bisette/jobs/adsorption/0.524-34/${i}_specie/${i} /home/geedai/ana.bisette/inputs_DFT/0.524-34/

done
