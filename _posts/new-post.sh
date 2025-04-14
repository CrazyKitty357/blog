#!/bin/bash

TITLE=$1
if [ "$1" = "" ]; then
	TITLE="title"
fi


DATE=$(date +"%Y-%m-%d")
AUTHOR="crazykitty"
TAGS='["TAG", "DOUBLE TAG", "TRIPLE TAG"]'
FILENAME="${DATE}-${TITLE// _/}.md"

cat > "$FILENAME" <<EOF
---
layout: post
title: "$TITLE"
date: "$DATE"
author: "$AUTHOR"
tags: $TAGS
---
## inital heading
The...
EOF

nvim "$FILENAME"
