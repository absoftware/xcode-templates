#!/bin/sh

# Directory for custom templates
XCODE_TEMPLATES="${HOME}/Library/Developer/Xcode/Templates"

# Directory for custom file templates
FILE_TEMPLATES="${XCODE_TEMPLATES}/File Templates/AB Software"

# Directory for custom project templates
PROJECT_TEMPLATES="${XCODE_TEMPLATES}/Project Templates/AB Software"

mkdir -p "${FILE_TEMPLATES}"
mkdir -p "${PROJECT_TEMPLATES}"

# Reinstall all templates
for TEMPLATE in $(ls "File Templates"); do
	rm -rf "${FILE_TEMPLATES}/${TEMPLATE}"
	cp -rv "File Templates/${TEMPLATE}" "${FILE_TEMPLATES}/"
done

# Notify about completed task
echo ""
echo "    PLEASE RESTART XCODE"
echo ""
