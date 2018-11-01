# exit when any command fails
set -e

cd vscode

export npm_config_arch=arm64

yarn
yarn --verbose gulp electron-arm64
yarn --verbose monaco-compile-check
yarn --verbose compile
yarn --verbose download-builtin-extensions
yarn run gulp vscode-linux-arm64-min
yarn run gulp vscode-linux-arm64-build-deb

# Zip
ls -la
cd ../VSCode-linux-arm64
tar czf ../VSCode-linux-arm64-${LATEST_MS_TAG}.tar.gz .

