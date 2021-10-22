#!/bin/bash

chmod +x deploy.sh

git checkout gh-pages
mv ./public/* .
rm README.md LICENSE *.js *.json
rm -rf ./public
rm -rf ./scripts
rm -rf ./.github
git add -A
git commit -m "Deploy"
git push && git checkout master
