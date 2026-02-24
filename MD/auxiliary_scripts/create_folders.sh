#/bin/bash

#12 estruturas

cd /home/ana.bisette/MD/oldReaxFF_adsorption

for i in "0.307-45" "0.431-44" "0.477-43" "0.524-34" "0.559-19" "0.604-50" "0.728-42" "0.766-41" "0.797-320" "0.900-3" "0.960-258" "0.971-168" ; do
	MD="/home/ana.bisette/MD/$i"
	old="$MD/old_reaxff"
	new="$MD/new_reaxff"

	mkdir $i
	
	for z in "H_specie" "O_specie" "OH_specie" "OOH_specie" ; do
		mkdir /home/ana.bisette/MD/oldReaxFF_adsorption/$i/$z
		cp -r /home/ana/jobs/fields/. /home/ana/jobs/adsorption/$i/$z/.
	done

#xsf
done

