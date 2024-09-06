FROM nvidia/cuda:12.6.0-cudnn-devel-ubuntu24.04
WORKDIR /home/comfy
SHELL ["/bin/bash", "-c"]
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        git \
        software-properties-common && \
    add-apt-repository ppa:deadsnakes/ppa && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        python3.11 \
        python3.11-venv \
        python3.11-dev \
        python3-pip && \
        python3.11 -m venv venv && \
        source venv/bin/activate && \
    pip install --no-cache-dir --upgrade pip setuptools && \
    PIP_INDEX_URL=https://pypi.tuna.tsinghua.edu.cn/simple pip install --no-cache-dir git+https://github.com/wanguolin/comfy-cli.git && \
    comfy --skip-prompt install --url https://github.com/wanguolin/ComfyUI.git --skip-torch-or-directml --fast-deps --cpu && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /root/.cache/pip
