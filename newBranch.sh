#!/usr/bin/env bash

# 确保脚本抛出遇到的错误
set -e

newBranch="$1"
if [ ! -n "$newBranch" ]; then
  newBranch='v1.0.0'
fi

# 创建新分支
git checkout main
git pull
git checkout -b $newBranch
git push origin $newBranch
git branch --set-upstream-to=origin/$newBranch
git pull
