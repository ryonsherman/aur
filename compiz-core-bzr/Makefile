update:
	make clean
	make download
	make patch
	make build
	make install
	make clean

download:
	wget https://aur.archlinux.org/packages/co/compiz-core-bzr/compiz-core-bzr.tar.gz
	tar zxvf compiz-core-bzr.tar.gz
	mv compiz-core-bzr/* .
	rm -rf compiz-core-bzr

patch:
	sed -i 's/cmake .. /cmake .. -DCMAKE_BUILD_TYPE="Release" /g' PKGBUILD

clean:
	rm -rf compiz-core-bzr*.tar.* compiz pkg src

build:
	makepkg -sf

install:
	yaourt -U compiz-core-bzr*.tar.xz

.PHONY: update patch clean build install
