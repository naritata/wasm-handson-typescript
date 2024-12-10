#!/bin/bash

bun run asbuild

# wasmファイルをdeployディレクトリにコピー
cp build/release.wasm deploy/release.wasm

cd deploy

# Dockerfile + wasmファイルからdocker imageを作成
docker buildx build --platform wasi/wasm -t naritatake/wasm-handson-ts .
