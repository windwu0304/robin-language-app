# 羅賓的語言修練之旅 📚

小學一年級注音符號與英文字母練習 App

## 功能特色

### 📚 完整題庫
- **注音符號** (15題) - ㄅㄆㄇㄈ 等聲母韻母
- **注音拼音** (15題) - 媽媽、爸爸、老師等詞彙
- **英文大寫** (16題) - A-P 字母
- **英文小寫** (16題) - a-p 字母

### 🎯 5種練習模式
- 全部混合
- 注音符號
- 注音拼音  
- 英文大寫
- 英文小寫

### 🎨 設計亮點
- 溫暖的珊瑚紅主色系
- 羅賓（海賊王）學者主題
- Minecraft 風格圖標
- 完全響應式設計

### 🔊 智慧語音
- 注音：中文語音 (zh-TW)
- 英文：英文語音 (en-US)
- 自動根據題型切換

### 📱 PWA 支援
- 可安裝到手機桌面
- 離線使用
- 原生 App 體驗

## 部署到 GitHub Pages

1. 在 GitHub 建立新 repository
2. 上傳所有檔案
3. 到 Settings > Pages
4. Source 選擇 main branch
5. 儲存後等待部署完成

## 本地測試

用任何 HTTP 伺服器開啟 index.html：

```bash
# Python 3
python -m http.server 8000

# Node.js
npx serve
```

然後開啟 http://localhost:8000

## 安裝為 App

### iOS (Safari)
1. 開啟網站
2. 點擊分享按鈕
3. 選擇「加入主畫面」

### Android (Chrome)
1. 開啟網站  
2. 點擊選單
3. 選擇「安裝應用程式」

## 技術棧

- 純 HTML/CSS/JavaScript
- PWA (Service Worker + Manifest)
- Web Speech API
- LocalStorage

## 授權

MIT License
