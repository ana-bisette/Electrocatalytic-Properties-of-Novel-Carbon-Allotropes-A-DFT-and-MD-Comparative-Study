#!/bin/bash
#0.431-44

for i in "H" "O" "OH" "OOH" ; do
	#scp ana.bisette@titanio.ufabc.int.br:/home/ana.bisette/jobs/adsorption/0.307-45/H_specie/H_$i.pdb /home/geedai/ana.bisette/0.307-45/H
	mkdir ${i}
	scp -r ana.bisette@titanio.ufabc.int.br:/home/ana.bisette/jobs/adsorption/0.431-44/${i}_specie/${i} /home/geedai/ana.bisette/inputs_DFT/0.431-44/

done
