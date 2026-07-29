# MySQL 格子填报写回

> **一句话定义：** 在 VeryReport **复杂报表**格子中修改数值，经填报设置提交后写回 MySQL 业务表。  
> **边界：** ① 这是「复杂报表填报」，**不是**数据中心「表单填报」（任务/审批） ② 步骤骨架；控件与填报设置细节以 [官网概述](https://www.veryreport.com/docs/operating-instructions/data-analysis/report/fill-app/fill-overview?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=mysql_fill) 为准 ③ 本仓不托管填报包或源码。

| | |
|---|---|
| **English** | MySQL cell fill / write-back via VeryReport complex reports |
| **Datasource** | MySQL（演示表可复用或本目录 SQL） |
| **Modules** | 复杂报表 · 填报控件 · 填报设置 · 填报预览 |
| **Files** | [`sample_budget.sql`](./sample_budget.sql) · [`meta.json`](./meta.json) |

![数据填报相关界面](https://www.veryreport.com/images/product/form-designer-panel.png)

> 上图为产品填报/表单类界面示意；格子填报在**复杂报表设计器 + 填报预览**中完成。

---

## 与「表单填报」的区别

| | 复杂报表格子填报 | 数据中心表单填报 |
|---|---|---|
| 入口 | 复杂报表设计 / 填报预览 | 数据中心表单 |
| 典型用途 | 预算格子订正、报表内改数写库 | 任务分发、审批流、表单入库 |
| 本示例 | ✅ | ❌（另文） |

---

## 1. 准备可写回的表

执行 [`sample_budget.sql`](./sample_budget.sql)：表 `vr_demo_budget`，含主键与可更新的 `budget_amt`。

**写回原则（实现时务必遵守产品填报设置）：**

- 有稳定主键 / 业务键，避免无键 UPDATE  
- 填报字段与列一一映射  
- 先在测试库验证，再接生产  

---

## 2. 连接 MySQL 并建数据集

同 [mysql 示例](../mysql/README.md) 连接步骤。数据集示例：

```sql
SELECT
  id,
  fiscal_year,
  cost_center,
  budget_amt,
  remark
FROM vr_demo_budget
WHERE fiscal_year = :fiscal_year
```

---

## 3. 报表 + 填报设置（步骤清单）

1. [试用账号](https://www.veryreport.com/register?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=mysql_fill) 新建复杂报表，绑定数据集  
2. 设计表样：成本中心、预算金额等格子  
3. 对可编辑格绑定**填报控件**（文本/数值等，以产品为准）  
4. 打开**填报设置**：数据源、插入/更新策略、字段映射（主键 `id` → 更新 `budget_amt`）  
5. **填报预览**中改数 → 提交 → 回 MySQL 查 `budget_amt` 是否变化  

帮助概述（必读）：  
https://www.veryreport.com/docs/operating-instructions/data-analysis/report/fill-app/fill-overview?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=mysql_fill  

产品：  
https://www.veryreport.com/product/report?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=mysql_fill  

---

## 4. 校验 SQL

```sql
SELECT id, cost_center, budget_amt, updated_at
FROM vr_demo_budget
ORDER BY id;
```

---

## English summary

Use VeryReport **complex-report cell fill** to edit cells and **write back** to MySQL. This is **not** the form-workflow fill module. Prepare a keyed table (`sample_budget.sql`), bind a dataset, configure fill controls + fill settings, submit in fill preview, then verify rows in MySQL. Details: official fill overview docs (link above). No public API/SDK for fill in this hub.

---

## 相关

- [MySQL 复杂报表](../mysql/README.md) · [Architecture 模块边界](../../docs/architecture.md) · [FAQ](../../FAQ.md)  
