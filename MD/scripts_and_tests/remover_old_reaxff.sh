#/bin/bash
#Remover pastas old_reaxff das pastas de cada espécie reativa em adsorption
#14 estruturas - adsorption

for i in "0.307-45" "0.431-44" "0.477-43" "0.493-290" "0.524-34" "0.559-19" "0.604-50" "0.728-42" "0.766-41" "0.797-320" "0.900-3" "0.960-258" "0.966-303" "0.971-168" ; do
	estruturas="/home/ana/jobs/adsorption/$i"
	cd $estruturas

	for j in "H_specie" "O_specie" "OH_specie" "OOH_specie"; do
            species="$estruturas/$j"
	    cd $species
	    rm -r old_reaxff
	#done
	#for z in "H_specie" "O_specie" "OH_specie" "OOH_specie" ; do
	#	mkdir /home/ana/jobs/adsorption/$i/$z
	#	cp -r /home/ana/jobs/fields/. /home/ana/jobs/adsorption/$i/$z/.
	done

#xsf
done

