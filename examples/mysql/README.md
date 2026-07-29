# MySQL → VeryReport 复杂报表

> **一句话定义：** 用 MySQL 作为数据源，在 VeryReport 中建立数据集并设计中国式复杂报表（分组 / 交叉 / 参数）。  
> **边界：** ① 本页为可复制示例，不替代 [官网帮助](https://www.veryreport.com/docs?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=mysql) ② 本仓无安装包；体验请走 [免费试用](https://www.veryreport.com/register?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=mysql) ③ SQL 为演示表结构，可按需改名。

| | |
|---|---|
| **英文标题** | Connect MySQL to VeryReport for complex (Chinese-style) reports |
| **数据源** | MySQL 5.7+ / 8.x（InnoDB） |
| **产品能力** | 数据源连接 · 数据集 · 复杂报表设计器 |
| **文件** | [`sample_sales.sql`](./sample_sales.sql) · [`meta.json`](./meta.json) |

![复杂报表设计器](https://www.veryreport.com/images/product/report-designer-panel.png)

---

## 你将得到什么

1. 一张可导入的演示库表：`vr_demo_sales`（销售明细）  
2. 建议的数据集 SQL（可下推聚合）  
3. 在 VeryReport 中从「连接 MySQL」到「预览交叉表」的步骤清单  

适合检索意图：*MySQL 报表工具*、*MySQL BI report*、*how to connect MySQL to reporting tool*、*中国式复杂报表 MySQL*。

---

## 1. 准备 MySQL 演示数据

在你的 MySQL 中执行 [`sample_sales.sql`](./sample_sales.sql)（可先建库 `vr_demo`）。

核心表字段：

| 列 | 含义 |
|---|---|
| `biz_date` | 业务日期 |
| `region` | 大区 |
| `product_line` | 产品线 |
| `amount` | 销售额 |
| `qty` | 数量 |

---

## 2. 在 VeryReport 连接 MySQL

1. [注册 / 登录试用](https://www.veryreport.com/register?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=mysql)  
2. 进入数据源管理，新建 **MySQL** 连接  
3. 填写主机、端口、库名、账号；测试连通后保存  

> SaaS 试用需保证云端能访问你的 MySQL（公网 IP / 白名单）。内网库请评估 [私有化](https://www.veryreport.com/contact?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=mysql) 或先把演示表放到可达环境。

操作细节以帮助文档「数据源」章节为准：  
https://www.veryreport.com/docs?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=mysql

---

## 3. 创建数据集

新建数据集，类型选 SQL（或向导），绑定上一步 MySQL 源。建议明细查询：

```sql
SELECT
  biz_date,
  region,
  product_line,
  amount,
  qty
FROM vr_demo_sales
WHERE biz_date >= :start_date
  AND biz_date <  :end_date
```

说明：

- `:start_date` / `:end_date` 对应报表**参数**，缩小扫描范围（见 [Best Practices](../../docs/best-practices.md)）。  
- 若库不支持命名参数语法，按产品内实际参数写法替换（帮助文档为准）。  
- 字段类型：日期、字符串、数值对齐后，交叉表更稳。

可选：再建一张「按区域汇总」数据集，把 `GROUP BY` 留在数据库侧：

```sql
SELECT
  region,
  product_line,
  SUM(amount) AS amount_sum,
  SUM(qty)    AS qty_sum
FROM vr_demo_sales
WHERE biz_date >= :start_date
  AND biz_date <  :end_date
GROUP BY region, product_line
```

---

## 4. 设计复杂报表（中国式表样）

1. 新建**复杂报表**，绑定上述数据集  
2. 拖入 `region`（行维）、`product_line`（列维或第二行维）、`amount`（度量，求和）  
3. 添加参数控件：开始日期 / 结束日期，绑定数据集参数  
4. 设置表头多层、合计行（按设计器能力）  
5. 预览 → 导出 Excel / PDF 验证  

产品页：https://www.veryreport.com/product/report?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=mysql  

主题导读：https://www.veryreport.com/topics/complex-report?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=mysql

---

## 5. 进阶（可选）

| 方向 | 说明 |
|------|------|
| **格子填报** | 在表样格子中订正金额并写回 MySQL（与表单填报不同能力） |
| **BI 看板** | 同一数据集拖到自助分析做联动图 |
| **Vera 问数** | 基于同一数据集自然语言提问（权限与人工一致） |

填报概述：  
https://www.veryreport.com/docs/operating-instructions/data-analysis/report/fill-app/fill-overview?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=mysql

---

## English summary

**Goal:** Connect **MySQL** to **VeryReport**, create a dataset, and build a Chinese-style complex report (grouping / cross-tab / parameters).

1. Run [`sample_sales.sql`](./sample_sales.sql) on MySQL.  
2. Sign up for a [trial](https://www.veryreport.com/register?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=mysql), add a MySQL datasource.  
3. Create a SQL dataset (detail or pre-aggregated).  
4. Design a complex report with region × product_line and date parameters.  

This repo is a **Developer Hub** (no product source / no Docker image). SaaS trial or on-premises delivery only.

---

## 相关

- [Examples 索引](../README.md) · [Architecture](../../docs/architecture.md) · [FAQ](../../FAQ.md)  
- 对比选型：https://www.veryreport.com/compare?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=mysql  
