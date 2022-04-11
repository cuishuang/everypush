#!/bin/bash
cd /home/ubuntu/public/secret
git pull
nowTime=$(date "+%Y-%m-%d %H:%M:%S")
echo $nowTime >> today.md
echo "<br>" >> today.md
echo -e "\n"
git status
echo -e "\n"
git add -A
echo -e "\n"
git commit -m"提交于$nowTime"
echo -e "\n"
git push
