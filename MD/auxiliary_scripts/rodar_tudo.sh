#/bin/bash
#Rodar todos os cripts - criar pastas e submeter jobs
#14 estruturas - adsorption

for i in "0.307-45" "0.431-44" "0.477-43" "0.493-290" "0.524-34" "0.559-19" "0.604-50" "0.728-42" "0.766-41" "0.797-320" "0.900-3" "0.960-258" "0.966-303" "0.971-168" ; do
        estruturas="/home/ana.bisette/jobs/adsorption/$i"
        cd $estruturas
	#chmod +x criar_pastas.sh
	chmod +x submit_jobs.sh
	#chmod +x trocar_dominio1.sh
	#./criar_pastas.sh
	#./trocar_dominio1.sh
	#./submit_jobs.sh
	#cd /home/ana.bisette/jobs/adsorption/species/H2
	#sbatch job
        #cd /home/ana.bisette/jobs/adsorption/species/H2O
	#sbatch job

#xsf
done
