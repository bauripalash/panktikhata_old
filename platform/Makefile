all: static dynamic

static:
	zig build-lib -static -lc -freference-trace sample.zig && mv ./libsample.a ../linux/lib/libsample.a


dynamic:
	zig build-lib -dynamic -lc -freference-trace sample.zig && mv ./libsample.so ../linux/lib/libsample.so
	mkdir -p ../build/linux/x64/release/bundle/lib
	cp ./libsample.* ../build/linux/x64/release/bundle/lib/
