#/bin/bash
#Criar pastas para cada estrutura de cada espécie reativa
#0.960-258

for i in "H" "O" "OH" "OOH"; do
	for j in $(seq 1 6); do
		cd /home/ana.bisette/jobs/adsorption/0.960-258/${i}_specie/${i}_${j}
		sbatch job
	done

#xsf
done
~                                                                                                                               
