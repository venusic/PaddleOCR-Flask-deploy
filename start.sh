#!/bin/bash
ps -aux|grep server.py|grep -v grep |awk 'END{print $2}'|xargs kill
sleep 3
rm -rf out.log
eval "$(conda shell.bash hook)"
conda activate ocr
nohup python3 server.py > out.log 2>&1  &

echo "start up ocr server"
