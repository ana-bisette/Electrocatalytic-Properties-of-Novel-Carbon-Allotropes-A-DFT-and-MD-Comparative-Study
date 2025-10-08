#/bin/bash
#Criar pastas para cada estrutura de cada espécie reativa
#0.971-168

for i in "H" "O" "OH" "OOH"; do
	for j in $(seq 1 3); do
		cd /home/ana.bisette/jobs/adsorption/0.971-168/${i}_specie
		mkdir ${i}_${j}
		atomsk ${i}_${j}.pdb ${i}_${j}.lmp
		mv ${i}_${j}.lmp ${i}_${j}
		cp -r /home/ana.bisette/jobs/scripts_n_tests/fields/new_reaxff/. /home/ana.bisette/jobs/adsorption/0.971-168/${i}_specie/${i}_${j}/.
		cd /home/ana.bisette/jobs/adsorption/0.971-168/${i}_specie/${i}_${j}
                vim -E -s input <<-EOF
                :%s/x.lmp/${i}_${j}.lmp/g
                :update
                :quit
EOF
	done



for x in $(seq 1 3 ); do
	cd /home/ana.bisette/jobs/adsorption/0.971-168/H_specie/H_${x}
	vim -E -s input <<-EOF
	:%s/C H O/C H/g
	:update
	:quit
EOF
done

for x in $(seq 1 3 ); do
        cd /home/ana.bisette/jobs/adsorption/0.971-168/O_specie/O_${x}
        vim -E -s input <<-EOF
        :%s/C H O/C O/g
        :update
        :quit
EOF
done
        #done
        #for z in "H_specie" "O_specie" "OH_specie" "OOH_specie" ; do
        #       mkdir /home/ana.bisette/jobs/adsorption/$i/$z
	#       cp -r /home/ana.bisette/jobs/fields/new_reaxff/. /home/ana.bisette/jobs/adsorption/$i/$z/.


#xsf
done
~                                                                                                                               
