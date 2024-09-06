#!/bin/bash

# Base image details
BASE_OS="ubuntu24.04"
PYTHON_VERSION="3.11"
VARIANT="cpu"

# Base tag
REPO_BASE="wanguolin/comfly"
BASE_TAG="${BASE_OS}-python${PYTHON_VERSION}-${VARIANT}"
COMFY_CLI_TAG="comfy-cli-${BASE_OS}-python${PYTHON_VERSION}-${VARIANT}"
COMFY_CLI_INSTALL_WORKFLOWS_TAG="comfy-cli-workflows-pre-install"

# Build base image
docker build -f "Dockerfile.${BASE_TAG}" -t "${REPO_BASE}:${BASE_TAG}" .

# Build comfy-cli image with environment variables
docker build \
  -f "Dockerfile.${COMFY_CLI_TAG}" \
  -t "${REPO_BASE}:${COMFY_CLI_TAG}" .

# Build comfy-cli-install-workflows image
cp -r $(find ~/ -path "*/comfly/workflows" -type d | head -n 1) ./
docker build \
    -f "Dockerfile.${COMFY_CLI_INSTALL_WORKFLOWS_TAG}" \
    -t "${REPO_BASE}:${COMFY_CLI_INSTALL_WORKFLOWS_TAG}" .
rm -rf workflows

# Optional: Print the built image tags
echo "Built images:"
echo "Base image: ${REPO_BASE}:${BASE_TAG}"
echo "Comfy-Cli image: ${REPO_BASE}:${COMFY_CLI_TAG}"
echo "Comfy-Cli Install Workflows image: ${REPO_BASE}:${COMFY_CLI_INSTALL_WORKFLOWS_TAG}"

# Optional: Print the environment variables used
echo "Environment variables used:"
echo "You can run the Comfy-Cli workflow test with: docker run -p 8188:8188 ${REPO_BASE}:${COMFY_CLI_INSTALL_WORKFLOWS_TAG}"
