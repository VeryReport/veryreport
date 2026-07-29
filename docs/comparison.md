# Comparison（客观选型对照）

> **一句话定义：** VeryReport（非常报表）与常见报表 / BI 工具的**场景向**对照，便于架构与采购初筛。  
> **边界：** ① **客观、不攻击** ② 不冒充竞品官方表述 ③ 详细可视化选型以官网 [对比页](https://www.veryreport.com/compare?utm_source=github&utm_medium=docs&utm_campaign=developer_hub) 为准 ④ 能力以各产品当前版本为准，本文只抓「是否适合中国式复杂报表 + 填报 + 私有化」主轴。

试用：https://www.veryreport.com/register?utm_source=github&utm_medium=docs&utm_campaign=developer_hub

---

## 怎么读这张表

| 符号 | 含义 |
|------|------|
| 强 | 该场景通常是主战场或明确优势方向 |
| 中 | 能做，但不是最典型强项或需较多配套 |
| 弱 / 非目标 | 通常不作为该类需求首选 |

「弱」≠ 产品差，只表示**与该行场景匹配度**相对较低。

---

## 场景对照（简化）

| 场景 | VeryReport | 中国式复杂报表工具（同类商业产品） | 国际自助 BI（云厂商 / 国际 BI 类） | 开源 BI（社区引擎类） |
|------|------------|----------------------------------------|----------------------------------------|--------------------------------------|
| 中国式复杂报表 / 套打 / 多级表头 | 强 | 强 | 中～弱 | 弱 |
| 格子填报写回 / 正式报送 | 强 | 强 | 弱 | 弱 |
| 自助探索分析 / 可视化看板 | 强 | 中 | 强 | 强 |
| ETL + 报表/BI 一体化 | 强 | 视版本 | 中（常靠外部） | 中 |
| Vera 类 NLQ / Chat BI | 强（已交付） | 视厂商 | 视云厂商 | 社区方案不一 |
| SaaS 快速试用 | 强 | 视厂商 | 强 | 中（需自建） |
| 私有化 / 数据不出域 | 强 | 强 | 视 SKU | 强（自建） |
| 开源可改源码 | 非目标 | 非目标（多为商业） | 非目标 | 强 |
| 公开 Docker 自助安装产品 | 非本仓目标 | 视厂商 | 视 SKU | 强 |

VeryReport：**商业**产品；本 GitHub **不是**开源引擎仓。

---

## 何时优先考虑 VeryReport

- 需要**中国式复杂报表**与正式导出，同时要 BI / 大屏  
- 需要**格子填报**或表单填报写库  
- 希望 **SaaS 试用 → 私有化** 同一产品能力  
- 需要 **Vera** 问数且权限与数据集同源  

## 何时可能更适合其他类型

- 只要改开源内核、社区插件生态 → 开源 BI  
- 只要云上个人/部门轻量看板、深度绑定某云生态 → 国际自助 BI  
- 只要单一老牌填报生态且已有存量模板资产 → 评估现有中国式报表工具迁移成本  

官网对照与选型页：https://www.veryreport.com/compare?utm_source=github&utm_medium=docs&utm_campaign=developer_hub  

---

## 相关

- [`architecture.md`](./architecture.md) · [`FAQ`](../faq/README.md) · [`examples/`](../examples/README.md)  
- 社区选型软文入口：https://www.veryreport.com/community?utm_source=github&utm_medium=docs&utm_campaign=developer_hub  
