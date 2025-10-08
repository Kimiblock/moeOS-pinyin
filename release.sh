#!/usr/bin/bash

function grabSources() {
	local url="https://github.com/amzxyz/RIME-LMDG"
	echo "Downloading wanxiang gram..."
	curl \
		"${url}/releases/download/LTS/wanxiang-lts-zh-hans.gram" \
		--progress-bar \
		-Lo \
		rime-data/others/wanxiang.gram
	echo "Downloading ICE dicts..."
	local url="https://raw.githubusercontent.com/iDvel/rime-ice"
	mkdir -p rime-data/others/rime-ice/
	for file in 8105 base ext others tencent; do
		curl \
			"${url}/refs/heads/main/cn_dicts/${file}.dict.yaml" \
			--progress-bar \
			-Lo \
			"rime-data/others/rime-ice/${file}.dict.yaml"
	done

}

grabSources