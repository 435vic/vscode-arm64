# exit when any command fails
set -e

cd vscode

export CC=$(which arm-linux-gnueabihf-gcc)
export CXX="$(which arm-linux-gnueabihf-g++) -L$(pwd)/rootfs/usr/lib/arm-linux-gnueabihf/"

export npm_config_arch=arm

yarn run gulp vscode-linux-arm-min
yarn run gulp vscode-linux-arm-build-deb

# Zip
ls -la
cd ../VSCode-linux-armhf
tar czf ../VSCode-linux-armhf-${LATEST_MS_TAG}.tar.gz .

