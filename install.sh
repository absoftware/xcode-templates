#!/bin/bash

# Color
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

function red {
    printf "${RED}$@${NC}\n"
}

function green {
    printf "${GREEN}$@${NC}\n"
}

function yellow {
    printf "${YELLOW}$@${NC}\n"
}

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
	echo $(red "Removed ${FILE_TEMPLATES}/${TEMPLATE}")
	cp -r "File Templates/${TEMPLATE}" "${FILE_TEMPLATES}/"
	echo $(green "Installed ${FILE_TEMPLATES}/${TEMPLATE}")
done

# Notify about completed task
echo ""
echo "    $(yellow "PLEASE RESTART XCODE")"
echo ""
