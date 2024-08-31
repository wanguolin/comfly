#!/bin/bash

cd /ComfyUI/custom_nodes

clone_and_checkout() {
    local repo_url=$1
    local commit_hash=$2
    local repo_dir=$(basename "$repo_url" .git)

    git clone --depth 1 "$repo_url" && \
    cd "$repo_dir" && \
    git fetch --depth 1 origin "$commit_hash" && \
    git checkout "$commit_hash" && \
    cd ..
}



