# exit when any command fails
set -e

cd vscode

export CC=$(which arm-linux-gnueabihf-gcc)
export CXX="$(which arm-linux-gnueabihf-g++) -L$(pwd)/rootfs/usr/lib/arm-linux-gnueabihf/"

export npm_config_arch=arm64
echo > build/npm/preinstall.js
export npm_config_target="$(grep target .yarnrc | sed 's/[^0-9.]*//g')"
npm install --target_arch=armh64

yarn run gulp vscode-linux-arm64-min
yarn run gulp vscode-linux-arm64-build-deb

# Zip
ls -la
cd ../VSCode-linux-arm64
tar czf ../VSCode-linux-arm64-${LATEST_MS_TAG}.tar.gz .

