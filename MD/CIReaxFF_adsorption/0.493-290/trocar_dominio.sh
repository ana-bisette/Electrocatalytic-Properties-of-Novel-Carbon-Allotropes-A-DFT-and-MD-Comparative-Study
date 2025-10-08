#/bin/bash

vim -E -s criar_pastas.sh <<-EOF
:%s/ana.bisette/ana/g
:update
:quit
EOF

vim -E -s submit_jobs.sh <<-EOF
:%s/ana.bisette/ana/g
:update
:quit
EOF
