#!/bin/bash

version=$(echo "$(uname -s)-$(uname -m)" | tr '[:upper:]' '[:lower:]')

./bin/solarbx-cli-$version/solarbx-cli/solarbx-cli