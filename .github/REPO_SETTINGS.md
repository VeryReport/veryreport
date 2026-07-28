# GitHub 仓库设置清单（Phase 0）

在 GitHub 网页 **Settings** 或使用 `gh` CLI 应用下列项。本文件是操作清单，不是开源贡献指南。

## About（仓库简介）

**Description（建议，≤350 字符）：**

```
VeryReport Developer Hub — Enterprise reporting & BI (commercial). Complex reports, self-service BI, data entry, ETL, data screens, Vera AI. Not open source. Website: https://www.veryreport.com
```

**Website：** `https://www.veryreport.com/?utm_source=github&utm_medium=about&utm_campaign=developer_hub`

**勾选：** Issues（内容看板可用）、Discussions（必开）

**不要勾选：** 暗示本仓为可 clone 运行的 Template / Package 等误导项（按需）

## Topics（复制粘贴）

```
business-intelligence
dashboard
report
reporting
analytics
data-visualization
etl
java
spring-boot
vue3
mysql
oracle
chatbi
ai
mcp
bi-platform
data-entry
embedded-analytics
```

## Discussions

1. Settings → General → Features → **Discussions** → Enable  
2. 建议分类：`Announcements` · `Q&A` · `Ideas` · `FAQ`  
3. 值班见 [`docs/discussions-duty.md`](../docs/discussions-duty.md)

## CLI（可选，本机已安装 gh 时）

```bash
gh repo edit VeryReport/veryreport \
  --description "VeryReport Developer Hub — Enterprise reporting & BI (commercial). Not open source. https://www.veryreport.com" \
  --homepage "https://www.veryreport.com/?utm_source=github&utm_medium=about&utm_campaign=developer_hub" \
  --enable-discussions \
  --add-topic business-intelligence --add-topic dashboard --add-topic report \
  --add-topic reporting --add-topic analytics --add-topic data-visualization \
  --add-topic etl --add-topic java --add-topic spring-boot --add-topic vue3 \
  --add-topic mysql --add-topic oracle --add-topic chatbi --add-topic ai \
  --add-topic mcp --add-topic bi-platform --add-topic data-entry --add-topic embedded-analytics
```
