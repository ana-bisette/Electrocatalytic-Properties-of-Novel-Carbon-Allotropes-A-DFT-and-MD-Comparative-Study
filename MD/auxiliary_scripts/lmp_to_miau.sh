#!/bin/bash
# bash script

cif="/home/ana.bisette/Sacada/CIF"

for i in "0.797-320" ; do 
	for x in "H" "O" "OH" "OOH" ; do
		cp input input_$x
                vim -E -s input_$x <<-EOF
                :%s/$i.lmp/miau/g
                :update
                :quit
EOF
	done

done
