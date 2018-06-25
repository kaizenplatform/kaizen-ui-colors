#!/bin/bash

set -e
git clone -b gh-pages git@github.com:kaizenplatform/kaizen-ui-colors.git preview-gh-pages
cd preview-gh-pages
rm -rf *
cp -R ../preview/* .
git add -A
git commit -am "Auto build preview on ${CIRCLE_BUILD_NUM}" && git push -f origin gh-pages
cd ../
rm -rf preview-gh-pages

npm publish
