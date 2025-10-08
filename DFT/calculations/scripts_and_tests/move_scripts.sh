#/bin/bash
#12 estruturas

for i in "0.431-44" "0.477-43" "0.524-34" "0.559-19" "0.604-50" "0.728-42" "0.766-41" "0.797-320" "0.900-3" "0.960-258" "0.971-168" ; do
	cp /home/geedai/ana.bisette/inputs_DFT/0.307-45/0.307-45.sh /home/geedai/ana.bisette/inputs_DFT/${i}
	cp /home/geedai/ana.bisette/inputs_DFT/0.307-45/convert_to_POSCAR.sh /home/geedai/ana.bisette/inputs_DFT/${i}
done

