#!/bin/sh

# Directory for custom templates
XCODE_TEMPLATES="${HOME}/Library/Developer/Xcode/Templates"

# Directory for custom file templates
FILE_TEMPLATES="${XCODE_TEMPLATES}/File Templates/AB Software"

# Directory for custom project templates
PROJECT_TEMPLATES="${XCODE_TEMPLATES}/Project Templates/AB Software"

mkdir -p "${FILE_TEMPLATES}"
mkdir -p "${PROJECT_TEMPLATES}"

# Reinstall MVVM template
rm -rf "${FILE_TEMPLATES}/MVVM.xctemplate"
cp -rv "File Templates/MVVM.xctemplate" "${FILE_TEMPLATES}/"
