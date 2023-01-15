#!/bin/bash
tmux new -d './derohe-proxy --listen-address=127.0.0.1:8080 --log-interval=60 --nonce --daemon-address=178.62.28.214:10101 > output.log'
tmux new -d './playground -w deroi1qyzlxxgq2weyqlxg5u4tkng2lf5rktwanqhse2hwm577ps22zv2x2q9pvfz92xcqdkukzhgva8qsmeqzdn -r 127.0.0.1:8080 -p rpc > output.log'
