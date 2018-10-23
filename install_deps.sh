sudo apt-get update
sudo apt-get install libx11-dev libxkbfile-dev libsecret-1-dev fakeroot rpm
# Install yarn from the package repository,
# since npm does not actually work
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
# Update yarn
# npm update -g yarn
sudo apt-get install yarn
echo "=========  YARN WAS UPDATED  ========="
yarn --version
