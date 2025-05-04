#!/bin/bash

version=$(echo "$(uname -s)-$(uname -m)" | tr '[:upper:]' '[:lower:]')

./bin/solarbx-smb-$version/ssolarbx-smb