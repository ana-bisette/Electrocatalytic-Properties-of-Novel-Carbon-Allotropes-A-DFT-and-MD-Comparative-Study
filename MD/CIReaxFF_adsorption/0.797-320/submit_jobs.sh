#/bin/bash
#Criar pastas para cada estrutura de cada espécie reativa
#0.797-320

for i in "H" "O" "OH" "OOH"; do
	for j in $(seq 1 10); do
		cd /home/ana.bisette/jobs/adsorption/0.797-320/${i}_specie/${i}_${j}
		sbatch job
	done

#xsf
done
~                                                                                                                               
