# GitHub上傳指南

## 快速開始

### 方法一：使用GitHub網頁界面（最簡單）

1. **訪問GitHub**：https://github.com
2. **登入你的帳戶**
3. **創建新倉庫**：
   - 點擊右上角 "+" → "New repository"
   - 倉庫名稱：例如 `chinese-fortune-telling`
   - 描述：`八字算命網頁 - Chinese Fortune Telling Website`
   - 選擇公開 (Public)
   - **不要**初始化README、.gitignore或許可證
   - 點擊 "Create repository"

4. **上傳文件**：
   - 在新建的倉庫頁面，點擊 "uploading an existing file"
   - 將 `chinese_fortune_telling.html`、`simple_fortune_telling.html`、`README.md`、`LICENSE` 拖拽到上傳區域
   - 填寫提交信息：`Initial commit: Chinese Fortune Telling Website`
   - 點擊 "Commit changes"

5. **啟用GitHub Pages**：
   - 進入倉庫設置：Settings → Pages
   - 在 Source 部分選擇 `master` 分支
   - 點擊 Save
   - 等待幾分鐘，你的網站將在以下地址可用：
     - `https://你的用戶名.github.io/chinese-fortune-telling/chinese_fortune_telling.html`
     - `https://你的用戶名.github.io/chinese-fortune-telling/simple_fortune_telling.html`

### 方法二：使用命令行（推薦）

1. **準備Git配置**：
   ```bash
   cd fortune-telling-website
   git config user.name "你的姓名"
   git config user.email "你的郵箱"
   ```

2. **創建GitHub倉庫**（在GitHub網站上）：
   - 倉庫名稱：`chinese-fortune-telling`
   - 公開訪問
   - 不要初始化文件

3. **推送代碼**：
   ```bash
   # 設置遠程倉庫（使用HTTPS）
   git remote add origin https://github.com/你的用戶名/chinese-fortune-telling.git
   
   # 或者使用SSH（如果你配置了SSH密鑰）
   # git remote add origin git@github.com:你的用戶名/chinese-fortune-telling.git
   
   # 推送代碼
   git push -u origin master
   ```

4. **如果遇到認證問題**，使用訪問令牌：
   ```bash
   # 生成訪問令牌：https://github.com/settings/tokens
   # 選擇 repo 權限
   
   # 使用令牌推送
   git remote add origin https://你的用戶名:你的令牌@github.com/你的用戶名/chinese-fortune-telling.git
   git push -u origin master
   ```

## 文件說明

### 主要文件
1. **`chinese_fortune_telling.html`** - 完整功能八字算命網頁
2. **`simple_fortune_telling.html`** - 簡化版算命網頁
3. **`README.md`** - 項目說明文檔
4. **`LICENSE`** - MIT許可證
5. **`upload_to_github.sh`** - 上傳幫助腳本

### 文件大小
- 完整版：28.7 KB
- 簡化版：17.3 KB
- 總大小：約 50 KB

## 訪問地址

上傳成功後，你的網站將在以下地址可用：

### 完整版
```
https://你的用戶名.github.io/chinese-fortune-telling/chinese_fortune_telling.html
```

### 簡化版
```
https://你的用戶名.github.io/chinese-fortune-telling/simple_fortune_telling.html
```

## 測試你的網站

1. **本地測試**：
   ```bash
   # 在瀏覽器中打開
   open chinese_fortune_telling.html
   # 或
   xdg-open chinese_fortune_telling.html
   ```

2. **在線測試**：
   - 上傳到GitHub後，訪問上述URL
   - 測試所有功能：輸入、計算、顯示結果

## 常見問題

### Q: 為什麼需要GitHub訪問令牌？
A: GitHub已禁用密碼認證，需要使用訪問令牌或SSH密鑰。

### Q: 如何生成訪問令牌？
1. 訪問 https://github.com/settings/tokens
2. 點擊 "Generate new token (classic)"
3. 選擇 "repo" 權限
4. 生成並複製令牌

### Q: 網站沒有立即顯示？
A: GitHub Pages需要幾分鐘時間部署，請耐心等待。

### Q: 如何更新網站？
A: 修改文件後，重新提交並推送：
```bash
git add .
git commit -m "更新描述"
git push
```

## 高級配置

### 自定義域名
如果你想使用自己的域名：
1. 在倉庫設置的Pages部分添加自定義域名
2. 在域名註冊商處配置CNAME記錄

### 啟用HTTPS
GitHub Pages自動提供HTTPS，無需額外配置。

## 支持與幫助

如有問題，請：
1. 查看GitHub文檔：https://docs.github.com
2. 檢查瀏覽器控制台錯誤
3. 確保文件路徑正確

---

**提示**：建議先使用GitHub網頁界面上傳，這是最簡單的方法。