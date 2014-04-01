update:
	make clean
	make download
	make patch
	make build
	make install
	make clean

download:
	wget https://aur.archlinux.org/packages/co/compiz-bzr/compiz-bzr.tar.gz
	tar zxvf compiz-bzr.tar.gz
	mv compiz-bzr/* .
	rm -rf compiz-bzr

patch:
	sed -i 's/cmake .. /cmake .. -DCMAKE_BUILD_TYPE="Release" /g' PKGBUILD

clean:
	rm -rf compiz-bzr*.tar.* compiz pkg srco

build:
	makepkg -sf

install:
	yaourt -U compiz-bzr*.tar.xz

.PHONY: update patch clean build install
