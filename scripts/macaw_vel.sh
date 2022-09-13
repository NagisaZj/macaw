#!/bin/bash

source env/bin/activate
which python

NAME="macaw_ml1_handle-pull-side-v2"
LOG_DIR="log"
TASK_CONFIG="config/cheetah_vel/40tasks_offline.json"
MACAW_PARAMS="config/alg/standard.json"

./scripts/runner.sh $NAME $LOG_DIR $TASK_CONFIG $MACAW_PARAMS


# Run macaw: CUDA_VISIBLE_DEVICES=6 . scripts/macaw_vel.sh   It will start four experiments on the specified GPU.
# Running different tasks: 1. modify NAME on line 6 (any name is okay) 2. modify "env" in config/cheetah_vel/40tasks_offline.json 3. Modify data directory in line 230-234 in src/macaw.py.