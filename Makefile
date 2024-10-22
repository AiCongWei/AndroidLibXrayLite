.PHONY: init
init:
	go mod tidy -v

.PHONY: build
build:
	GOPROXY=https://goproxy.cn,direct gomobile bind -v -androidapi 23 -ldflags='-s -w' ./

.PHONY: install
install: build
	unzip -o libv2ray.aar "jni/armeabi-v7a/libgojni.so" "jni/arm64-v8a/libgojni.so" "jni/x86_64/libgojni.so" "classes.jar" -d ../sdk_ss_uni/depends/AndroidLibV2rayLite/
