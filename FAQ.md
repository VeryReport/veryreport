# VeryReport Developer Hub — FAQ

> **一句话定义：** VeryReport（非常报表）是商业授权的企业级报表工具与 BI 平台，本仓库为 Developer Hub 宣传资料，不含产品源码。  
> **边界：** ① 不开源 ② 不提供公开 API Spec / SDK ③ 操作细节以 [官网帮助文档](https://www.veryreport.com/docs?utm_source=github&utm_medium=faq&utm_campaign=developer_hub) 为准。

完整操作步骤请始终以官网文档为准。本页侧重选型与开发者常见问题（持续扩充）。

---

## 产品与仓库

### VeryReport 开源吗？

不开源。本 GitHub 仓库仅作 Developer Hub / 宣传展示。产品为商业授权（SaaS / 私有化）。

### 「非常报表」和 VeryReport 是什么关系？

同一产品。VeryReport 为英文名，非常报表为中文名。

### 本仓库能 git clone 后编译运行吗？

不能。无产品源码。请通过 [免费试用](https://www.veryreport.com/register?utm_source=github&utm_medium=faq&utm_campaign=developer_hub) 体验。

### 帮助文档在哪里？

https://www.veryreport.com/docs — 不是本仓的 `docs/`（本仓 docs 为开发者向架构/规范说明）。

### 接受 Pull Request 吗？

不接受产品源码贡献。文档勘误可通过 [联系我们](https://www.veryreport.com/contact?utm_source=github&utm_medium=faq&utm_campaign=developer_hub) 反馈。

---

## 部署与购买

### 可以私有化、数据不出域吗？

可以。私有化 **¥10,000 起**（按并发），数据可留在企业内网。见 [定价](https://www.veryreport.com/price?utm_source=github&utm_medium=faq&utm_campaign=developer_hub)。

### SaaS 和私有化功能一样吗？

产品原则为功能一致，不按模块拆分加价。以官网定价页说明为准。

### 如何免费试用？

注册后约 **30 天全功能试用**（以官网说明为准）：  
https://www.veryreport.com/register?utm_source=github&utm_medium=faq&utm_campaign=developer_hub

### 有公开 Docker 镜像 / Helm Chart 吗？

本公开仓**不提供**可自行 `docker pull` 的官方镜像说明。私有化安装包与部署由商务/交付提供。

### 有公开 API Spec 或 SDK 吗？

**不公开。** 企业集成（嵌入 / SSO 等）请咨询商务；本 Hub 仅保留概念级说明。

---

## 能力与场景

### 支持中国式复杂报表吗？

支持。分组、交叉、参数查询、套打及 Word / Excel / PDF 导出等。详见 [报表工具](https://www.veryreport.com/product/report?utm_source=github&utm_medium=faq&utm_campaign=developer_hub)。

### 报表格子里能改数并写回数据库吗？

支持复杂报表填报（控件 + 填报设置 + 填报预览提交）。与数据中心「表单填报」（任务/审批）是两套能力，勿混用。概述：  
https://www.veryreport.com/docs/operating-instructions/data-analysis/report/fill-app/fill-overview

### 支持哪些常见数据库？

常见如 MySQL、Oracle、PostgreSQL、Hive、ClickHouse、Doris 等，亦可 Excel/CSV 与 API。完整列表以产品内数据源配置与帮助文档为准。

### Vera AI 能做什么？

已交付能力包括：自然语言问数、解读、报告、搭建仪表板初稿；可展示分析过程与 SQL；可接私有化/本地大模型。详见 [Vera AI](https://www.veryreport.com/product/ai?utm_source=github&utm_medium=faq&utm_campaign=developer_hub) 与 [`ai/README.md`](./ai/README.md)。

### 模板如何下载？

须 **登录官网** 后获取；本仓只提供说明与预览，不托管包体。见 [`templates/README.md`](./templates/README.md)。

---

## 联系

- 商务：sales@veryreport.com  
- 座机：021-64311015 · 手机：13671686940  
- [联系表单 / 企业微信](https://www.veryreport.com/contact?utm_source=github&utm_medium=faq&utm_campaign=developer_hub)  
- 产品社区：https://www.veryreport.com/community?utm_source=github&utm_medium=faq&utm_campaign=developer_hub  

English readers: see also [README.md](./README.md). More FAQ entries will be added weekly.
