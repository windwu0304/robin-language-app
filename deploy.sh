#!/bin/bash
# 羅賓的語言修練之旅 - 快速部署腳本

echo "🚀 羅賓的語言修練之旅 - GitHub Pages 部署助手"
echo ""

# 檢查 Git 是否安裝
if ! command -v git &> /dev/null; then
    echo "❌ 錯誤：未安裝 Git"
    echo "請先安裝 Git: https://git-scm.com/"
    exit 1
fi

# 檢查是否在專案目錄
if [ ! -f "index.html" ]; then
    echo "❌ 錯誤：請在 robin-language-app 目錄中執行此腳本"
    exit 1
fi

echo "✅ Git 已安裝"
echo ""

# 設定 Git 使用者資訊
echo "📝 設定 Git 使用者資訊"
read -p "輸入你的名字: " git_name
read -p "輸入你的 Email: " git_email

git config user.name "$git_name"
git config user.email "$git_email"

echo "✅ Git 設定完成"
echo ""

# 確認 Git 狀態
echo "📊 檢查專案狀態..."
if [ ! -d ".git" ]; then
    echo "初始化 Git repository..."
    git init
    git add .
    git commit -m "Initial commit: 羅賓的語言修練之旅"
    git branch -M main
fi

echo "✅ Git repository 準備完成"
echo ""

# GitHub repository 設定
echo "🌐 設定 GitHub repository"
read -p "輸入你的 GitHub username: " github_user
read -p "輸入 repository 名稱 (預設: robin-language-app): " repo_name
repo_name=${repo_name:-robin-language-app}

# 設定遠端
remote_url="https://github.com/$github_user/$repo_name.git"

if git remote | grep -q origin; then
    echo "更新遠端 URL..."
    git remote set-url origin $remote_url
else
    echo "新增遠端 repository..."
    git remote add origin $remote_url
fi

echo "✅ 遠端 repository 設定完成"
echo ""

# 推送到 GitHub
echo "📤 推送到 GitHub..."
echo "注意：如果要求輸入密碼，請使用 Personal Access Token"
echo "取得 Token: https://github.com/settings/tokens"
echo ""

if git push -u origin main; then
    echo "✅ 推送成功！"
else
    echo "❌ 推送失敗"
    echo ""
    echo "可能原因："
    echo "1. Repository 尚未在 GitHub 建立"
    echo "   前往: https://github.com/new"
    echo "   建立名為 '$repo_name' 的 repository"
    echo ""
    echo "2. 需要 Personal Access Token"
    echo "   前往: https://github.com/settings/tokens"
    echo "   產生新 token 並勾選 'repo' 權限"
    echo ""
    echo "完成後重新執行此腳本"
    exit 1
fi

echo ""
echo "🎉 部署完成！"
echo ""
echo "📋 下一步："
echo "1. 前往 https://github.com/$github_user/$repo_name/settings/pages"
echo "2. 在 'Build and deployment' 下："
echo "   - Source: 選擇 'Deploy from a branch'"
echo "   - Branch: 選擇 'main' 和 '/ (root)'"
echo "   - 點擊 Save"
echo ""
echo "3. 等待 1-2 分鐘後，你的 App 會上線於："
echo "   https://$github_user.github.io/$repo_name/"
echo ""
echo "✨ 完成後就可以把 App 安裝到手機了！"
