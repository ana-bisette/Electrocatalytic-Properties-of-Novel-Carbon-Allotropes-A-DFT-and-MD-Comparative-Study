#/bin/bash
#Criar pastas para cada estrutura de cada espécie reativa
#0.76-41

for i in "H" "O" "OH" "OOH"; do
	for j in $(seq 1 24); do
		cd /home/ana.bisette/jobs/adsorption/0.766-41/${i}_specie/${i}_${j}
		sbatch job
	done

#xsf
done
~                                                                                                                               
