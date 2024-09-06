#!/bin/bash
source /root/comfy/venv/bin/activate
find /root/comfy/workflows -name "*.json" -type f -exec echo "Processing {}" \; -exec comfy node install-deps --workflow {} \;
echo "All workflows processed"
