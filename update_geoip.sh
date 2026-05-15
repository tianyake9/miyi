#!/bin/bash

# 仓库信息（替换成你自己的）
GITHUB_USER="tianyake9"
REPO_NAME="miyi"
BRANCH="main"

# 下载最新 Country.mmdb
echo "正在下载最新 Country.mmdb..."
curl -fsSL https://github.com/Loyalsoldier/geoip/raw/release/Country.mmdb -o Country.mmdb

# 检查下载是否成功
if [ $? -ne 0 ]; then
  echo "下载失败，请检查网络或链接"
  exit 1
fi

# 提交并推送到仓库
echo "正在提交更新..."
git config --global user.name "tianyake9"
git config --global user.email "2415407354@qq.com"
git add Country.mmdb
git commit -m "自动更新 Country.mmdb: $(date +'%Y-%m-%d %H:%M:%S')"
git push origin $BRANCH

echo "更新完成！"
