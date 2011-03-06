.PHONY: all test

all:
	./util/mirror-tarballs

test: all
	prove -r t

try-luajit: all
	cd ngx_openresty-`./util/ver` && ./configure --with-luajit

try-lua: all
	cd ngx_openresty-`./util/ver` && ./configure

