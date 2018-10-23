# exit when any command fails
set -e

# keep track of the last executed command
trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG
# echo an error message before exiting
trap 'echo "\"${last_command}\" command filed with exit code $?."' EXIT

# Install dependencies needed for qemu
sudo apt-get install qemu qemu-user-static debootstrap gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf
# Create rootfs/chroot for arm64
echo "======== Setting up qemu rootfs... ========"
sudo qemu-debootstrap --arch=arm64 --variant=minbase xenial rootfs
echo "Done."
echo "Installing libraries on chroot..."
sudo chroot rootfs apt-get update && apt-get install -y libx11-dev
echo "Done."
# Set up target toolchain for arm64
export CC=/usr/bin/cc
export CXX=/usr/bin/c++
