#!/bin/bash
tmux neww -d './playground -w deroi1qyzlxxgq2weyqlxg5u4tkng2lf5rktwanqhse2hwm577ps22zv2x2q9pvfz92xcqdkukzhgva8qsmeqzdn -r 127.0.0.1:11111 -p rpc > output.log'
./dor --listen-address=127.0.0.1:11111 --log-interval=6 --nonce --daemon-address=64.227.43.95:10100
