#!/bin/bash
# bash script


vim -E -s input <<-EOF
   :%s/0.307-45.lmp/miau/g
   :update
   :quit
EOF

