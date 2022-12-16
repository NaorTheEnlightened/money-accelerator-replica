#!/usr/bin/env sh

set -e

npm run build

cd dist

git init
git add -A
#git commit -m "New Deployment"
git commit -m $0
git push -f git@github.com:NaorTheEnlightened/money-accelerator-replica.git master:gh-pages

