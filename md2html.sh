#!/bin/bash

pandoc --output=attach.html \
	--standalone \
	--template=plantilla.html \
	attach.md

pandoc --output=build.html \
	--standalone \
	--template=plantilla.html \
	build.md

pandoc --output=cli.html \
	--standalone \
	--template=plantilla.html \
	cli.md
	
	
xmllint --noout --valid attach.html
xmllint --noout --valid build.html
xmllint --noout --valid cli.html

TARGET=/home/users/inf/hisx2/isx41012376/Gitlab/static_pages/adriisotuu.github.io

cp -u  *.html $TARGET




