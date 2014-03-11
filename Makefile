upload:
	burp -k -C ~/.burp.cookie */*.src.tar.gz

clean:
	rm -rf */{svn,trunk,src,pkg,*.{jar,deb,part,zip,tar.{bz2,gz,xz}}}

.PHONY: upload clean
