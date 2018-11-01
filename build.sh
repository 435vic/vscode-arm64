# exit when any command fails
set -e

cd vscode

export npm_config_arch=aarch64

yarn
yarn --verbose gulp electron-aarch64
yarn --verbose monaco-compile-check
yarn --verbose compile
yarn --verbose download-builtin-extensions
yarn run gulp vscode-linux-aarch64-min
yarn run gulp vscode-linux-aarch64-build-deb

# Zip
ls -la
cd ../VSCode-linux-aarch64
tar czf ../VSCode-linux-aarch64-${LATEST_MS_TAG}.tar.gz .

