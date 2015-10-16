#!/bin/bash
find . -name '*.md' -print0 | while IFS= read -r -d '' file; do
    if [[ $file = ./poppy-humanoid/poppy-humanoid* ]] || [[ $file = ./poppy-torso/poppy-torso* ]] || [[ $file = ./pypot/pypot* ]]  || [[ $file = ./poppy-ergo-jr/poppy-ergo-jr* ]]  || [[ $file = *README ]]; then
        echo "$file" "not used"
    else
        pandoc --from=markdown --to=rst --output="${file%.md}.rst" "$file";
        echo "$file" "->" "${file%.md}.rst";
    fi
done