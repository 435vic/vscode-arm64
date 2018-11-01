# exit when any command fails
set -e

cd vscode

export CC=cc
export CXX=c++

export npm_config_arch=arm64

yarn
yarn run gulp vscode-linux-arm-min
yarn run gulp vscode-linux-arm-build-deb

# Zip
ls -la
cd ../VSCode-linux-armhf
tar czf ../VSCode-linux-armhf-${LATEST_MS_TAG}.tar.gz .

