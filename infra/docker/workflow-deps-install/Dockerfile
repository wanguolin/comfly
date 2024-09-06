ARG TAG=comfy-cli-base-cpu-ubuntu2404
FROM wanguolin/comfly:${TAG}
WORKDIR /home/comfy
COPY workflows /home/comfy/workflows
SHELL ["/bin/bash", "-c"]
RUN source venv/bin/activate && comfy node install-deps --workflow=/workspace/workflows/*