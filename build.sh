# exit when any command fails
set -e

cd vscode

export CC=$(which arm-linux-gnueabihf-gcc)
export CXX="$(which arm-linux-gnueabihf-g++) -L$(pwd)/rootfs/usr/lib/arm-linux-gnueabihf/"

export npm_config_arch=arm64
export npm_config_target_arch=arm64

yarn
yarn run gulp vscode-linux-arm64-min
yarn run gulp vscode-linux-arm64-build-deb

# Zip
ls -la
cd ../VSCode-linux-arm64
tar czf ../VSCode-linux-arm64-${LATEST_MS_TAG}.tar.gz .

