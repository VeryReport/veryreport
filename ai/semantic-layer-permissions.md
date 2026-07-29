# 语义层、权限与 AI 审计

> **一句话定义：** Vera 问数走与报表 / BI **同一套数据集（语义入口）与权限**；AI **不**作为绕过行级安全的后门。  
> **边界：** 概念说明；权限配置步骤见官网帮助。

相关：[Architecture](../docs/architecture.md) · [Chat BI](./chat-bi.md)

---

## 语义层（在 VeryReport 中的位置）

```text
数据源 / ETL ──▶ 数据集（字段、口径、默认过滤、权限）──▶ 报表 / BI / 大屏 / Vera
```

- **数据集** = 面向分析的语义入口（不是把 VeryReport 当成数仓引擎本身）。  
- 问数、解读、搭建都基于你暴露给用户的数据集，而不是任意扫全库。

---

## 权限原则（AI 同样生效）

| 约束 | 含义 |
|------|------|
| 资源权限 | 用户能否看到该数据集 / 报表 |
| 行列级过滤 | 问数结果应落在同一过滤条件内（与产品设计原则一致） |
| 可解释 SQL | 便于审计「AI 到底查了什么」 |

**实践建议：** 先配好数据集与权限，再开放 Vera；POC 用脱敏或演示库。见 [Best Practices](../docs/best-practices.md)。

---

## 审计要点（选型 FAQ）

- 能否看到生成的 SQL？→ **能**（已交付：过程可解释）。  
- AI 是否单独一套账号直连库？→ 产品路径是经平台数据集与权限，而非本仓公开「万能连接串」。  
- 合规数据不出域？→ 私有化部署 + 可选本地大模型，见 [models.md](./models.md)。

---

## English

Vera uses the **same datasets and permission model** as human-built reports/BI. Treat the dataset as the semantic layer entry; configure row/column security before enabling NLQ. SQL is inspectable for audit. No public API to bypass ACL.
