# 八字算命網頁 (Chinese Fortune Telling Website)

這是一個基於傳統八字命理學的算命網頁，讓用戶輸入出生年月日時辰進行命理分析。

## 功能特點

### 完整版 (`chinese_fortune_telling.html`)
- ✅ **完整輸入系統**：年份、月份、日期、時辰、性別選擇
- ✅ **八字計算**：自動計算年柱、月柱、日柱、時柱
- ✅ **五行分析**：根據天干地支計算五行屬性
- ✅ **生肖顯示**：自動計算出生肖
- ✅ **詳細分析**：命格特點、事業運勢、感情婚姻、健康建議
- ✅ **視覺化八字**：彩色八字顯示，不同五行用不同顏色
- ✅ **響應式設計**：適應各種屏幕尺寸

### 簡化版 (`simple_fortune_telling.html`)
- ✅ **快速輸入**：簡化的日期時間選擇
- ✅ **核心功能**：保留八字計算和基本分析
- ✅ **移動優化**：專為手機設計的界面
- ✅ **一鍵算命**：簡單的操作流程

## 技術特點

### 前端技術
- **純HTML/CSS/JavaScript**：無需服務器端支持
- **響應式設計**：使用CSS Grid和Flexbox
- **動態交互**：JavaScript實現實時計算
- **本地計算**：所有計算在瀏覽器中完成

### 八字計算算法
```javascript
// 天干地支數據
const heavenlyStems = ['甲', '乙', '丙', '丁', '戊', '己', '庚', '辛', '壬', '癸'];
const earthlyBranches = ['子', '丑', '寅', '卯', '辰', '巳', '午', '未', '申', '酉', '戌', '亥'];
const zodiacAnimals = ['鼠', '牛', '虎', '兔', '龍', '蛇', '馬', '羊', '猴', '雞', '狗', '豬'];
const fiveElements = ['木', '木', '火', '火', '土', '土', '金', '金', '水', '水'];
```

### 計算方法
- **年柱**: (年份 - 4) % 10 得到天干，(年份 - 4) % 12 得到地支
- **月柱**: (月份 - 1) % 12 計算
- **日柱**: (日期 - 1) % 10 計算
- **時柱**: 根據時辰計算
- **生肖**: (年份 - 4) % 12 得到生肖

## 安全與隱私

### 數據處理
- ✅ **純前端計算**：所有計算在瀏覽器中完成
- ✅ **無數據上傳**：不收集或上傳用戶信息
- ✅ **本地存儲**：不保存用戶輸入數據
- ✅ **僅供娛樂**：明確標註"僅供參考"

### 免責聲明
- 所有分析基於傳統命理學
- 結果僅供娛樂參考
- 不保證準確性
- 命運掌握在自己手中

## 部署方式

### 1. 本地使用
```bash
# 直接打開HTML文件
open chinese_fortune_telling.html
# 或
xdg-open chinese_fortune_telling.html
```

### 2. Web服務器部署
```bash
# 上傳到Apache/Nginx服務器
scp -r fortune-telling-website/ user@server:/var/www/html/
```

### 3. Google Drive
- 上傳HTML文件到Google Drive
- 設置為"公開分享"
- 通過分享鏈接訪問

### 4. GitHub Pages（推薦）
詳細上傳指南請查看 [GITHUB_UPLOAD_GUIDE.md](GITHUB_UPLOAD_GUIDE.md)

**快速步驟**：
1. 創建GitHub倉庫（例如：`chinese-fortune-telling`）
2. 上傳所有文件到倉庫
3. 啟用GitHub Pages功能
4. 通過以下地址訪問：
   - `https://你的用戶名.github.io/chinese-fortune-telling/chinese_fortune_telling.html`
   - `https://你的用戶名.github.io/chinese-fortune-telling/simple_fortune_telling.html`

**使用幫助腳本**：
```bash
# 運行上傳幫助腳本
./upload_to_github.sh 你的GitHub用戶名 倉庫名稱
```

## 使用指南

### 完整版使用流程
1. 選擇出生年份（1900-2026）
2. 選擇出生月份（1-12月）
3. 選擇出生日期（根據月份自動調整）
4. 選擇出生時辰（子時到亥時）
5. 選擇性別（男/女）
6. 點擊"開始算命"按鈕
7. 查看八字命盤和分析結果

### 簡化版使用流程
1. 輸入出生年月日
2. 選擇出生時辰
3. 選擇性別
4. 點擊"立即算命"
5. 查看基本命理分析

## 文件結構

```
fortune-telling-website/
├── chinese_fortune_telling.html    # 完整功能八字算命網頁
├── simple_fortune_telling.html     # 簡化版算命網頁
└── README.md                       # 項目說明文檔
```

## 技術要求

### 瀏覽器兼容性
- Chrome 60+
- Firefox 55+
- Safari 11+
- Edge 79+
- 移動瀏覽器（iOS Safari, Chrome for Android）

### 網絡要求
- 無需網絡連接（離線可用）
- 文件大小：約30KB
- 加載時間：< 1秒

## 開發者信息

### 項目創建
- **創建時間**：2026-03-27
- **創建者**：Charlie (AI Assistant)
- **技術棧**：HTML5, CSS3, JavaScript (ES6+)

### 設計理念
1. **用戶友好**：簡單直觀的界面設計
2. **文化傳承**：傳統命理學的現代化呈現
3. **技術創新**：純前端實現複雜計算
4. **隱私保護**：不收集用戶數據

## 未來發展計劃

### 功能擴展
1. **更多命理系統**：添加紫微斗數、星座等其他命理系統
2. **歷史記錄**：添加保存和查看歷史算命記錄
3. **分享功能**：允許分享算命結果到社交媒體
4. **個性化建議**：根據八字提供更個性化的生活建議

### 技術優化
1. **更準確的算法**：實現更精確的八字計算算法
2. **離線功能**：添加PWA支持，實現離線使用
3. **多語言支持**：添加英文和其他語言版本
4. **API集成**：提供八字計算API供其他應用使用

## 貢獻指南

歡迎提交Issue和Pull Request來改進這個項目。

### 如何貢獻
1. Fork這個倉庫
2. 創建特性分支 (`git checkout -b feature/AmazingFeature`)
3. 提交更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 開啟Pull Request

## 許可證

這個項目使用MIT許可證 - 查看 [LICENSE](LICENSE) 文件了解詳情。

## 聯繫方式

如有問題或建議，請通過GitHub Issues聯繫。

---

**重要提示**：本工具僅供娛樂參考，命運掌握在自己手中，請理性對待算命結果。