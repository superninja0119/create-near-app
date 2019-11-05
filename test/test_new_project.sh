#!/bin/bash
set -ex

# remove temporary blank project
rm  -rf tmp-project

# test generating new project in new dir
yarn create near-app tmp-project
cd tmp-project
FILE=package.json
if test -f "$FILE"; then
  echo "$FILE exists. Have a cookie!"
else
  echo "ERROR: $FILE not found."
  exit 1
fi

# remove temporary blank project
rm  -rf tmp-project