# 快速開始指南

## 最簡單的上傳方法

### 步驟1：準備文件
所有文件已經在 `fortune-telling-website` 文件夾中準備好：
- ✅ `chinese_fortune_telling.html` - 完整版算命網頁
- ✅ `simple_fortune_telling.html` - 簡化版算命網頁
- ✅ `README.md` - 說明文檔
- ✅ `LICENSE` - 許可證文件
- ✅ `upload_to_github.sh` - 上傳幫助腳本
- ✅ `GITHUB_UPLOAD_GUIDE.md` - 詳細指南

### 步驟2：上傳到GitHub（三選一）

#### 方法A：使用GitHub網頁界面（最簡單）
1. 訪問 https://github.com 並登入
2. 點擊右上角 "+" → "New repository"
3. 填寫：
   - Repository name: `chinese-fortune-telling`
   - Description: `八字算命網頁`
   - 選擇 Public
   - **不要**初始化任何文件
4. 點擊 "Create repository"
5. 上傳所有文件（拖拽到頁面）
6. 提交更改

#### 方法B：使用命令行
```bash
cd fortune-telling-website

# 配置Git（只需一次）
git config user.name "你的姓名"
git config user.email "你的郵箱"

# 創建GitHub倉庫（在網頁上創建）

# 推送代碼
git remote add origin https://github.com/你的用戶名/chinese-fortune-telling.git
git push -u origin master
```

#### 方法C：使用幫助腳本
```bash
cd fortune-telling-website
./upload_to_github.sh 你的GitHub用戶名 chinese-fortune-telling
```

### 步驟3：啟用GitHub Pages
1. 進入倉庫設置：Settings → Pages
2. 在 Source 選擇 `master` 分支
3. 點擊 Save
4. 等待幾分鐘

### 步驟4：訪問你的網站
- 完整版：`https://你的用戶名.github.io/chinese-fortune-telling/chinese_fortune_telling.html`
- 簡化版：`https://你的用戶名.github.io/chinese-fortune-telling/simple_fortune_telling.html`

## 本地測試
在瀏覽器中直接打開：
```bash
# 完整版
open chinese_fortune_telling.html

# 簡化版
open simple_fortune_telling.html
```

## 功能測試
1. 選擇出生年份（1900-2026）
2. 選擇出生月份（1-12月）
3. 選擇出生日期
4. 選擇出生時辰（子時到亥時）
5. 選擇性別（男/女）
6. 點擊"開始算命"
7. 查看八字命盤和分析結果

## 技術要求
- 現代瀏覽器（Chrome, Firefox, Safari, Edge）
- 無需服務器端支持
- 文件總大小：約50KB
- 加載時間：< 1秒

## 立即開始
1. **本地測試**：直接打開HTML文件
2. **上傳到GitHub**：使用網頁界面（最簡單）
3. **分享給朋友**：發送GitHub Pages鏈接

## 遇到問題？
1. 查看 `GITHUB_UPLOAD_GUIDE.md` 獲取詳細幫助
2. 確保GitHub倉庫名稱正確
3. 檢查瀏覽器控制台是否有錯誤
4. 確保所有文件都已上傳

---

**提示**：建議先本地測試，確認功能正常後再上傳到GitHub。