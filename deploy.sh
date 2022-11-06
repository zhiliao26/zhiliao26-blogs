#!/usr/bin/env sh
 
# 忽略错误
set -e
 
# 构建
yarn run docs:build
 
# 进入待发布的目录
cd docs/.vitepress/dist
 
git init
git add -A
git commit -m 'deploy'
 
git push -f https://github.com/zhiliao26/zhiliao26-blogs.git
 
cd -
 
rm -rf docs/.vitepress/dist