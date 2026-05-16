
#!/bin/bash
set -e

GEOIP_URL="https://github.com/MetaCubeX/meta-rules-dat/releases/latest/download/geoip.dat"
GEOSITE_URL="https://github.com/MetaCubeX/meta-rules-dat/releases/latest/download/geosite.dat"

SUB_URL="https://miyi-71l.pages.dev/sub?token=cc7169dfdfbe6a11c987d1d9ce8f92af&target=clash"
SUB_FILE="nodes.yaml"

echo "🔄 开始自动更新..."
curl -fsSL $GEOIP_URL -o geoip.dat
curl -fsSL $GEOSITE_URL -o geosite.dat
curl -fsSL $SUB_URL -o $SUB_FILE
echo "✅ 更新完成"
