#!/usr/bin/env bash

# 确保脚本抛出遇到的错误
set -e

msg="$1"
if [ ! -n "$msg" ]; then
  msg='更新代码'
fi

# 提交代码
git add .
git commit -m $msg
git pull
git push
