#!/bin/bash
until sudo /var/tmp/oairan/cmake_targets/ran_build/build/nr-softmodem -E \
    -O /var/tmp/etc/oai/gnb.sa.band77.fr1.106PRB.usrpb210.conf --sa; do
    echo "Server 'nr-softmodem' crashed with exit code $?.  Respawning.." >&2
    sleep 1
done
