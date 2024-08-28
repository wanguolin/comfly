FROM python:3.11-slim

RUN apt-get update && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/* && \
    git clone https://github.com/comfyanonymous/ComfyUI.git && \
    cd ComfyUI && \
    python3 -m venv venv && \
    . venv/bin/activate && \
    pip install --upgrade pip setuptools && \
    PIP_INDEX_URL=https://pypi.tuna.tsinghua.edu.cn/simple pip install -r requirements.txt
