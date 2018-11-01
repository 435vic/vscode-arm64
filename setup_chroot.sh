# exit when any command fails
set -e

# Install dependencies needed for qemu
sudo apt-get install qemu qemu-user-static debootstrap gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf
# Create rootfs/chroot for arm64
echo "======== Setting up qemu rootfs... ========"
sudo qemu-debootstrap --arch=arm64 --variant=minbase xenial rootfs
echo "Done."
#echo "Installing libraries on chroot..."
#sudo chroot rootfs apt-get update 
#sudo chroot rootfs apt-get install -y libX11-dev
echo "Done."
# Set up target toolchain for arm64
export CC=/usr/bin/cc
export CXX=/usr/bin/c++
