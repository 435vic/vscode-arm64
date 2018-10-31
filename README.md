# vscode-arm64
[![Build Status](https://travis-ci.com/435vic/vscode-arm64.svg?branch=master)](https://travis-ci.com/435vic/vscode-arm64)  
vscode build example on Travis CI


## What is done when the job starts in Travis CI?

* Required dependencies are installed
* The repo is cloned with `git clone https://github.com/microsoft/vscode`
* yarn is updated to 1.10.1
* The variable `npm_config_arch` is set to `arm64`
* `yarn` is run
* `yarn run gulp vscode-linux-arm64-min` is run
* `yarn run gulp vscode-linux-arm64-build-deb` is run
* the `.deb` file is deployed
