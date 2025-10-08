#!/usr/bin/bash

function grabSources() {
	local url="https://github.com/amzxyz/RIME-LMDG"
	echo "Downloading wanxiang gram..."
	curl \
		"${url}/releases/download/LTS/wanxiang-lts-zh-hans.gram" \
		-Lo \
		rime-data/others/wanxiang.gram

}

grabSources