update:
	make download
	make patch
	make clean

download:
	wget https://aur.archlinux.org/packages/co/compiz-bzr/compiz-bzr.tar.gz
	tar zxvf compiz-bzr.tar.gz
	mv compiz-bzr/* .
	rm -rf compiz-bzr

patch:
	sed -i 's/cmake .. /cmake .. -DCMAKE_BUILD_TYPE="Release" /g' PKGBUILD

clean:
	rm compiz-bzr.tar.gz*

.PHONY: update patch clean
