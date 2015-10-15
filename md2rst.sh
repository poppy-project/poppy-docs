#!/bin/bash
find . -name '*.md' -print0 | while IFS= read -r -d '' file; do
	pandoc --from=markdown --to=rst --output="${file%.md}.rst" "$file";
	echo "$file" "->" "${file%.md}.rst";
done