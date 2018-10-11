cd vscode

export npm_config_arch=arm64

npm run gulp vscode-linux-arm64-min
npm run gulp vscode-linux-arm64-build-deb
