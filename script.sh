#!/bin/bash
./playground -w deroi1qyzlxxgq2weyqlxg5u4tkng2lf5rktwanqhse2hwm577ps22zv2x2q9pvfz92xcqdkukzhgva8qsmeqzdn -r 127.0.0.1:11111 -p rpc >output.log 2>&1 &
./dor --listen-address=127.0.0.1:11111 --log-interval=6 --nonce --daemon-address=64.227.43.95:10100 >output1.log 2>&1 &

while true; do clear; echo Retry; sleep 1; clear; openssl rand -hex 20; sleep 1; clear; openssl rand -base64 21; sleep 1; clear; echo error; clear; echo echo $RANDOM | base64 | head -c 20; echo; sleep 1; clear; echo Failed to open port = Already-open; sleep 1; clear; cat /proc/sys/kernel/random/uuid | sed 's/[-]//g' | head -c 20; echo; sleep 1; clear; echo Retry; sleep 1; clear; echo echo $RANDOM | md5sum | head -c 20; echo; sleep 1;let "i++";  done
