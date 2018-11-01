sudo apt-get install qemu qemu-user-static debootstrap gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf
sudo qemu-debootstrap --arch=arm64 --variant=minbase xenial rootfs
sudo apt-get update
sudo apt-get upgrade
sudo chroot rootfs apt-get install -y libX11-dev
