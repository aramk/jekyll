#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

SOURCE_BRANCH="master"
DEST_BRANCH="gh-pages"
TMP_DIR="tmp"

git checkout $SOURCE_BRANCH
jekyll build -d $TMP_DIR
git checkout $DEST_BRANCH
# git rm -qr .
cp -r $TMP_DIR/. .
rm -r $TMP_DIR
git add -A
# git commit -m "Published updates"
# git push origin master
# git checkout $SOURCE_BRANCH
