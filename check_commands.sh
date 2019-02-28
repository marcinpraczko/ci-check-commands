#!/bin/bash

# (C) 2019 by Marcin Praczko

# Very simple checks for available commnad
# This should help to see what commands are available in system / build job / containers / etc

# Very simple check commands
BIN_CMDS="\
	docker \
	docker-compose \
	python \
	make \
"

for cmd in ${BIN_CMDS}; do
    echo -n "CMD: ${cmd}: "
    which "${cmd}" || echo "Not found"
done
