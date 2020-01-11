#!/usr/bin/env sh

set -e
bundle exec jekyll build
cd _site
echo 'colinchang.net' > CNAME
git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:colin-chang/colin-chang.github.io.git master:standalone
cd -