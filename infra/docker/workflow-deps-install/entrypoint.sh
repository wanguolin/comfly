#!/bin/bash

cd /ComfyUI
. venv/bin/activate
python main.py --listen --port 8808 "$@"