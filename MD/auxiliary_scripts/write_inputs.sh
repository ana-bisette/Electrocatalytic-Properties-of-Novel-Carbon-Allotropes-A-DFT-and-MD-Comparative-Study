#!/bin/bash
# bash script

for i in "0.307-45" "0.431-44" "0.477-43" "0.493-290" "0.524-34" "0.559-19" "0.604-50" "0.728-42" "0.766-41" "0.797-320" "0.900-3" "0.960-258" "0.966-303" "0.971-168" "1.025-36" "1.026-263" "1.032-48" "1.043-47" "1.075-340" "1.115-289" "1.119-196" "1.120-227" "1.137-254" "1.161-173" "1.193-235" "1.197-176" "1.197-28" "1.202-241" "1.240-216" "1.263-71" "1.288-251" ; do
	old="$job/old_reaxff"
	new="$job/new_reaxff"
	for x in "H" "O" "OH" "OOH" ; do
		cd "$new"
		cp input input_$x
                vim -E -s input_$x <<-EOF
                   :%s/$i.lmp/$file/g
                   :update
                   :quit
EOF

	        cd "$old"
	        cp input input_$x
		vim -E -s input_$x <<-EOF
                   :%s/$i.lmp/$file/g
                   :update
                   :quit
EOF
        done

done
