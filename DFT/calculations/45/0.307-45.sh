#!/bin/bash
#0.307-45
#H_specie

for i in "H" "O" "OH" "OOH" ; do
	#scp ana.bisette@titanio.ufabc.int.br:/home/ana.bisette/jobs/adsorption/0.307-45/H_specie/H_$i.pdb /home/geedai/ana.bisette/0.307-45/H
	scp -r ana.bisette@titanio.ufabc.int.br:/home/ana.bisette/jobs/adsorption/0.307-45/${i}_specie/${i} /home/geedai/ana.bisette/0.307-45/

done
