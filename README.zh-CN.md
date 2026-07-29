<p align="center">
  <a href="https://www.veryreport.com/?utm_source=github&utm_medium=readme&utm_campaign=developer_hub">
    <img src="https://www.veryreport.com/images/logo.png" alt="VeryReport 非常报表" width="360" />
  </a>
</p>

<h1 align="center">VeryReport（非常报表）</h1>

<p align="center">
  <strong>企业级报表工具与 BI 数据分析平台 · Developer Hub</strong><br />
  复杂报表 · 自助分析 · 数据填报 · ETL · 数据大屏 · Vera AI 问数
</p>

<p align="center">
  <a href="https://www.veryreport.com/register?utm_source=github&utm_medium=readme&utm_campaign=developer_hub"><strong>免费试用</strong></a> ·
  <a href="https://www.veryreport.com/price?utm_source=github&utm_medium=readme&utm_campaign=developer_hub">价格</a> ·
  <a href="https://www.veryreport.com/docs?utm_source=github&utm_medium=readme&utm_campaign=developer_hub">帮助文档</a> ·
  <a href="https://www.veryreport.com/contact?utm_source=github&utm_medium=readme&utm_campaign=developer_hub">联系我们</a> ·
  <a href="https://www.veryreport.com/?utm_source=github&utm_medium=readme&utm_campaign=developer_hub">官网</a>
</p>

<p align="center">
  <strong>Hub</strong> ·
  <a href="./docs/README.md">Docs</a> ·
  <a href="./FAQ.md">FAQ</a> ·
  <a href="./examples/README.md">Examples</a> ·
  <a href="./ai/README.md">AI</a> ·
  <a href="./templates/README.md">Templates</a> ·
  <a href="./ROADMAP.md">Roadmap</a> ·
  <a href="./RELEASES.md">Releases</a> ·
  <a href="./DISCUSSIONS.md">Discussions</a>
</p>

<p align="center">
  <strong>语言</strong> ·
  <a href="./README.md">English</a> ·
  <strong>中文（当前）</strong> ·
  <a href="./README.ja-JP.md">日本語</a>
</p>

---

> **一句话定义：** VeryReport（非常报表）是面向中国企业的**商业**报表工具与 BI 平台，覆盖中国式复杂报表、填报、ETL、大屏与 Vera AI。  
> **三条边界：** ① 本仓**无源码、不开源** ② **不公开** API Spec / SDK ③ 逐步操作以[官网帮助文档](https://www.veryreport.com/docs?utm_source=github&utm_medium=readme&utm_campaign=developer_hub)为准。

---

## 产品截图

### 复杂报表设计器

![复杂报表设计器](https://www.veryreport.com/images/product/report-designer-panel.png)

### BI 自助分析

![BI 自助分析](https://www.veryreport.com/images/product/bi-dashboard-built.png)

### 数据填报

![数据填报](https://www.veryreport.com/images/product/form-designer-panel.png)

### ETL · 数据大屏 · Vera AI

<p>
<img src="https://www.veryreport.com/images/product/etl-designer-panel.png" alt="ETL" width="32%" />
<img src="https://www.veryreport.com/images/product/screen-designer-panel.png" alt="数据大屏" width="32%" />
<img src="https://www.veryreport.com/images/product/vera-feature-ask.png" alt="Vera AI" width="32%" />
</p>

更多界面：[https://www.veryreport.com/?utm_source=github&utm_medium=readme&utm_campaign=developer_hub](https://www.veryreport.com/?utm_source=github&utm_medium=readme&utm_campaign=developer_hub)

---

## 功能摘要

| 模块 | 要点 |
|---|---|
| **复杂报表** | 类 Excel；分组/交叉/参数；套打；Word/Excel/PDF；格子填报回写 |
| **BI 自助分析** | 拖拉拽、钻取联动、KPI、自助取数 |
| **数据填报** | 表单任务与审批；复杂报表格子订正与 Excel 导入写库 |
| **ETL** | 可视化清洗、多源、调度 |
| **数据大屏** | 拖拽搭建、多分辨率、刷新与分享 |
| **Vera AI** | 问数 / 解读 / 报告 / 搭建；SQL 可解释；可接本地大模型 |
| **权限与集成** | 组织角色、资源权限；SSO/嵌入为企业交付 |

产品页：
[报表](https://www.veryreport.com/product/report?utm_source=github&utm_medium=readme&utm_campaign=developer_hub) ·
[BI](https://www.veryreport.com/product/bi?utm_source=github&utm_medium=readme&utm_campaign=developer_hub) ·
[填报](https://www.veryreport.com/product/form?utm_source=github&utm_medium=readme&utm_campaign=developer_hub) ·
[ETL](https://www.veryreport.com/product/etl?utm_source=github&utm_medium=readme&utm_campaign=developer_hub) ·
[大屏](https://www.veryreport.com/product/screen?utm_source=github&utm_medium=readme&utm_campaign=developer_hub) ·
[Vera](https://www.veryreport.com/product/ai?utm_source=github&utm_medium=readme&utm_campaign=developer_hub) ·
[对比](https://www.veryreport.com/compare?utm_source=github&utm_medium=readme&utm_campaign=developer_hub)

---

## 适用场景（Use Cases）

| 场景 | 说明 |
|---|---|
| 正式报送 / 中国式报表 | 多层表头、交叉、套打、导出归档 |
| 经营分析看板 | BI 自助分析 + 大屏汇报 |
| 格子订正 / 预算填报 | 复杂报表填报写库；或表单任务审批 |
| 数据准备 | ETL 清洗后供报表与 BI 同源使用 |
| 自然语言问数 | Vera 问数与搭建仪表板初稿 |
| SaaS 验证 → 私有化 | 先试用，再内网部署（见定价页） |

**不太适合：** 个人玩 CSV；把本仓当开源引擎；把 VeryReport 当数仓计算引擎。

---

## 架构（逻辑视图）

```text
                    ┌─ 复杂报表引擎（版式 / 导出 / 填报）
数据源 ──▶ 数据集 ──┼─ BI 自助分析 / 大屏
        ▲           ├─ 数据中心表单填报
        │           └─ Vera AI（问数 · 搭建 …）
        └── ETL 清洗加工（可选）

部署：SaaS 订阅  或  私有化（企业内网）
```

查询尽可能下推到数据库；性能取决于底层库。语义与权限由平台统一约束（含 AI 问数）。

更细的开发者说明见 [`docs/`](./docs/README.md)（持续补充，非官网手册镜像）。

---

## 快速开始（官网试用）

**不能** `git clone` 本仓编译产品。推荐：

1. [https://www.veryreport.com/register?utm_source=github&utm_medium=readme&utm_campaign=developer_hub](https://www.veryreport.com/register?utm_source=github&utm_medium=readme&utm_campaign=developer_hub) 注册试用（约 30 天全功能，以官网为准）  
2. 连接数据源（如 MySQL）  
3. 按[帮助文档](https://www.veryreport.com/docs?utm_source=github&utm_medium=readme&utm_campaign=developer_hub)：数据集 → 报表 / 看板 / 填报  

| 入口 | URL |
|---|---|
| 帮助中心 | https://www.veryreport.com/docs?utm_source=github&utm_medium=readme&utm_campaign=developer_hub |
| 复杂报表主题 | https://www.veryreport.com/topics/complex-report?utm_source=github&utm_medium=readme&utm_campaign=developer_hub |
| 填报概述 | https://www.veryreport.com/docs/operating-instructions/data-analysis/report/fill-app/fill-overview?utm_source=github&utm_medium=readme&utm_campaign=developer_hub |

私有化包与实施：**不在本仓分发**，请 [联系](https://www.veryreport.com/contact?utm_source=github&utm_medium=readme&utm_campaign=developer_hub)。

---

## Vera AI

已交付：自然语言**问数**、**解读**、**报告**、**搭建**仪表板初稿；过程与 SQL 可解释；可接私有化/本地大模型。  

详见 [`ai/README.md`](./ai/README.md) · [产品页](https://www.veryreport.com/product/ai?utm_source=github&utm_medium=readme&utm_campaign=developer_hub)。

---

## Examples · Templates · FAQ

| 入口 | 说明 |
|---|---|
| [`examples/`](./examples/README.md) | 场景示例（持续按周补充） |
| [`templates/`](./templates/README.md) | 模板说明；**须登录官网下载**包体 |
| [`FAQ.md`](./FAQ.md) | 扩展问答（Hub 技术向） |

选型对比：[https://www.veryreport.com/compare?utm_source=github&utm_medium=readme&utm_campaign=developer_hub](https://www.veryreport.com/compare?utm_source=github&utm_medium=readme&utm_campaign=developer_hub)

---

## 部署与购买

| 形态 | 说明 |
|---|---|
| SaaS | 首购约 **¥300**/人/年（以官网实时定价为准）· [https://www.veryreport.com/price?utm_source=github&utm_medium=readme&utm_campaign=developer_hub](https://www.veryreport.com/price?utm_source=github&utm_medium=readme&utm_campaign=developer_hub) |
| 试用 | 约 30 天 · [https://www.veryreport.com/register?utm_source=github&utm_medium=readme&utm_campaign=developer_hub](https://www.veryreport.com/register?utm_source=github&utm_medium=readme&utm_campaign=developer_hub) |
| 私有化 | 私有化授权按并发，详见定价/联系 · [https://www.veryreport.com/contact?utm_source=github&utm_medium=readme&utm_campaign=developer_hub](https://www.veryreport.com/contact?utm_source=github&utm_medium=readme&utm_campaign=developer_hub) |

SaaS 与私有化**功能一致**。本仓不是开源软件。

---

## FAQ 摘要

更多见 [`FAQ.md`](./FAQ.md)。

**开源吗？** 否。  
**能私有化吗？** 能。  
**有公开 Docker/SDK 吗？** 本公开仓不提供。  
**文档在哪？** https://www.veryreport.com/docs?utm_source=github&utm_medium=readme&utm_campaign=developer_hub  

---

## 社区与联系

| 渠道 | 信息 |
|---|---|
| 产品社区 | [https://www.veryreport.com/community?utm_source=github&utm_medium=readme&utm_campaign=developer_hub](https://www.veryreport.com/community?utm_source=github&utm_medium=readme&utm_campaign=developer_hub) |
| Discussions | 仓库 Discussions（开启后） |
| 商务 | sales@veryreport.com |
| 座机 | 021-64311015（更多渠道见官网联系页） |

<p align="center">
  <img src="https://www.veryreport.com/images/weCom.png" alt="企业微信二维码" width="180" />
</p>

---

## 关于本仓库

| 项目 | 说明 |
|---|---|
| 定位 | **VeryReport Developer Hub**（开发者营销 / SEO·GEO），非源码仓 |
| LLM 摘要 | [`llms.txt`](./llms.txt) · 贡献边界 [`CONTRIBUTING.md`](./CONTRIBUTING.md) |
| 许可 | 宣传材料版权归中创微（上海）软件有限公司；**≠ 开源许可** · 见 [`NOTICE`](./NOTICE) |

Star 表示关注，**不代表可获取源码**。

[https://www.veryreport.com/?utm_source=github&utm_medium=readme&utm_campaign=developer_hub](https://www.veryreport.com/?utm_source=github&utm_medium=readme&utm_campaign=developer_hub) · [https://www.veryreport.com/docs?utm_source=github&utm_medium=readme&utm_campaign=developer_hub](https://www.veryreport.com/docs?utm_source=github&utm_medium=readme&utm_campaign=developer_hub) · [https://www.veryreport.com/register?utm_source=github&utm_medium=readme&utm_campaign=developer_hub](https://www.veryreport.com/register?utm_source=github&utm_medium=readme&utm_campaign=developer_hub)
