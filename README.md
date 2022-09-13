# My cross compilation playground
```shell
docker build . -t tch1001/cross-build
docker run -it --rm \
	--mount type=bind,source="$(pwd)"/share,target=/share \
	tch1001/cross-build
cd share
wget http://www.landley.net/code/firmware/downloads/aboriginal-1.4.5.tar.gz
```
it turns out that linux 4.3 has a bunch of build difficulties, using the latest linux 4 version helps [archive](https://www.kernel.org/)
## Compiling Linux Kernel
```shell
cd linux-version
make -j4
make modules
make modules_install
```

## Booting into QEMU
```shell
mkinitramfs -o ramdisk.img # one time thing
qemu-system-x86_64 -kernel arch/x86_64/boot/bzImage \
	-nographic -append "console=ttyS0" \
	-initrd ramdisk.img -m 512
```
