/bin/bash

pandoc -o README.html \
	--standalone \
	--from markdown \
	--to html \
	--template=plantilla.html
	README.md
	
valid = False
xmllint --noout --valid README.html && valid=True



