#/bin/bash
#12 estruturas

module load python/3.9.13-gcc-9.4.0-nw7md5c
for i in "0.307-45" "0.431-44" "0.477-43" "0.524-34" "0.559-19" "0.604-50" "0.728-42" "0.766-41" "0.797-320" "0.900-3" "0.960-258" "0.971-168" ; do
	for j in {1..24} ; do
		#cp /home/ana.bisette/espresso/calculators/estruturas/calculators.py /home/ana.bisette/espresso/calculators/estruturas/${i}/H/H_${j}/
		#cp /home/ana.bisette/espresso/calculators/estruturas/calculators.py /home/ana.bisette/espresso/calculators/estruturas/${i}/O/O_${j}/
		#cp /home/ana.bisette/espresso/calculators/estruturas/calculators.py /home/ana.bisette/espresso/calculators/estruturas/${i}/OH/OH_${j}/
		#cp /home/ana.bisette/espresso/calculators/estruturas/calculators.py /home/ana.bisette/espresso/calculators/estruturas/${i}/OOH/OOH_${j}/

		cd /home/ana.bisette/espresso/calculators/estruturas/${i}/H/H_${j}/
		#rm input.pwi output.pwo erro.err submit.sh calculators.py
		python calculators.py
		cd ..
		cd /home/ana.bisette/espresso/calculators/estruturas/${i}/O/O_${j}/
		#rm input.pwi output.pwo erro.err submit.sh calculators.py
		python calculators.py
		cd ..
		cd /home/ana.bisette/espresso/calculators/estruturas/${i}/OH/OH_${j}/
		#rm input.pwi output.pwo erro.err submit.sh calculators.py
		python calculators.py
		cd ..
		cd /home/ana.bisette/espresso/calculators/estruturas/${i}/OOH/OOH_${j}/
		#rm input.pwi output.pwo erro.err submit.sh calculators.py
		python calculators.py
		cd ..
	done
done

