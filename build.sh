cd vscode

export npm_config_arch=arm64

yarn
yarn run gulp vscode-linux-arm64-min
yarn run gulp vscode-linux-arm64-build-deb
