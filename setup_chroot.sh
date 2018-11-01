# exit when any command fails
set -e

# Install dependencies needed for qemu
sudo apt-get install qemu qemu-user-static debootstrap gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf
# Create rootfs/chroot for arm64
echo "======== Setting up qemu rootfs... ========"
sudo qemu-debootstrap --arch=armhf --variant=minbase xenial rootfs
echo "Done."
#echo "Installing libraries on chroot..."
#sudo chroot rootfs apt-get update 
#sudo chroot rootfs apt-get install -y libx11-dev
echo "Done."
