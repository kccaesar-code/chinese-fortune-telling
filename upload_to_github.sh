#!/bin/bash

# 八字算命網頁上傳到GitHub的腳本
# 使用方法：./upload_to_github.sh <github-username> <repository-name>

set -e

# 顏色定義
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}八字算命網頁GitHub上傳腳本${NC}"
echo "======================================"

# 檢查參數
if [ $# -lt 2 ]; then
    echo -e "${RED}錯誤：請提供GitHub用戶名和倉庫名稱${NC}"
    echo "使用方法：$0 <github-username> <repository-name>"
    echo "示例：$0 yourusername chinese-fortune-telling"
    exit 1
fi

GITHUB_USER="$1"
REPO_NAME="$2"
REPO_URL="https://github.com/${GITHUB_USER}/${REPO_NAME}.git"

echo -e "${YELLOW}配置信息：${NC}"
echo "GitHub用戶名: ${GITHUB_USER}"
echo "倉庫名稱: ${REPO_NAME}"
echo "倉庫URL: ${REPO_URL}"
echo ""

# 檢查是否在正確的目錄
if [ ! -f "chinese_fortune_telling.html" ] || [ ! -f "simple_fortune_telling.html" ]; then
    echo -e "${RED}錯誤：請在fortune-telling-website目錄中運行此腳本${NC}"
    exit 1
fi

# 檢查Git配置
echo -e "${YELLOW}檢查Git配置...${NC}"
if [ -z "$(git config user.name)" ] || [ -z "$(git config user.email)" ]; then
    echo -e "${RED}錯誤：Git用戶信息未配置${NC}"
    echo "請先運行以下命令："
    echo "  git config user.name \"你的姓名\""
    echo "  git config user.email \"你的郵箱\""
    exit 1
fi

echo "Git用戶名: $(git config user.name)"
echo "Git郵箱: $(git config user.email)"
echo ""

# 檢查是否有遠程倉庫
if git remote -v | grep -q origin; then
    echo -e "${YELLOW}已配置遠程倉庫，更新中...${NC}"
    git remote set-url origin "${REPO_URL}"
else
    echo -e "${YELLOW}添加遠程倉庫...${NC}"
    git remote add origin "${REPO_URL}"
fi

echo ""

# 創建GitHub倉庫的說明
echo -e "${GREEN}第一步：在GitHub上創建新倉庫${NC}"
echo "請訪問 https://github.com/new 創建新倉庫："
echo "1. 倉庫名稱: ${REPO_NAME}"
echo "2. 描述: 八字算命網頁 - Chinese Fortune Telling Website"
echo "3. 選擇公開 (Public)"
echo "4. 不要初始化README、.gitignore或許可證"
echo "5. 點擊創建倉庫 (Create repository)"
echo ""

echo -e "${GREEN}第二步：獲取GitHub訪問令牌${NC}"
echo "如果你還沒有GitHub訪問令牌："
echo "1. 訪問 https://github.com/settings/tokens"
echo "2. 點擊 Generate new token (classic)"
echo "3. 選擇 repo 權限"
echo "4. 生成令牌並複製"
echo ""

echo -e "${GREEN}第三步：推送代碼到GitHub${NC}"
echo "運行以下命令："
echo ""
echo "1. 設置遠程倉庫："
echo "   git remote add origin https://${GITHUB_USER}:YOUR_TOKEN@github.com/${GITHUB_USER}/${REPO_NAME}.git"
echo ""
echo "2. 推送代碼："
echo "   git push -u origin master"
echo ""
echo "或者使用SSH（如果你配置了SSH密鑰）："
echo "   git remote add origin git@github.com:${GITHUB_USER}/${REPO_NAME}.git"
echo "   git push -u origin master"
echo ""

echo -e "${GREEN}第四步：啟用GitHub Pages${NC}"
echo "代碼推送後："
echo "1. 訪問 https://github.com/${GITHUB_USER}/${REPO_NAME}/settings/pages"
echo "2. 在 Source 部分選擇 master 分支"
echo "3. 點擊 Save"
echo "4. 等待幾分鐘，你的網站將在以下地址可用："
echo "   https://${GITHUB_USER}.github.io/${REPO_NAME}/chinese_fortune_telling.html"
echo "   https://${GITHUB_USER}.github.io/${REPO_NAME}/simple_fortune_telling.html"
echo ""

echo -e "${GREEN}文件準備就緒！${NC}"
echo "當前目錄包含以下文件："
ls -la
echo ""
echo "總大小: $(du -sh . | cut -f1)"
echo ""

echo -e "${YELLOW}快速推送命令（如果你已經有GitHub訪問令牌）：${NC}"
echo "TOKEN=\"你的GitHub訪問令牌\""
echo "git remote add origin https://${GITHUB_USER}:\${TOKEN}@github.com/${GITHUB_USER}/${REPO_NAME}.git"
echo "git push -u origin master"
echo ""

echo -e "${GREEN}完成！你的算命網頁已準備好上傳到GitHub。${NC}"