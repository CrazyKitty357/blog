#!/bin/bash

TITLE=$1
if [ "$1" = "" ]; then
	TITLE="title"
fi


DATE=$(date +"%Y-%m-%d")
AUTHOR="crazykitty"
TAGS='[]'
FILENAME="${DATE}-${TITLE// _/}.md"
THUMB="/blog/assets/img/posts/covers/test.png"

cat > "$FILENAME" <<EOF
---
layout: post
title: "$TITLE"
date: "$DATE"
thumbnail: "$THUMB"
author: "$AUTHOR"
tags: $TAGS
---
# inital heading
The...
EOF

nvim "$FILENAME"
