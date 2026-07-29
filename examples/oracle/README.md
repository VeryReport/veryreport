# Oracle → VeryReport 复杂报表 / BI

> **一句话定义：** 连接 Oracle，建立数据集，输出中国式复杂报表或 BI 看板。  
> **边界：** 步骤骨架；UI 细节以 [官网帮助](https://www.veryreport.com/docs?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=oracle) 为准；本仓无安装包。

| | |
|---|---|
| **English** | How to connect Oracle to VeryReport for reports & BI |
| **Datasource** | Oracle 12c+（以产品驱动支持为准） |
| **Files** | [`sample_sales.sql`](./sample_sales.sql) · [`meta.json`](./meta.json) |

![复杂报表设计器](https://www.veryreport.com/images/product/report-designer-panel.png)

---

## 1. 演示表

在 Oracle 执行 [`sample_sales.sql`](./sample_sales.sql)（用户需有建表权限；可改 schema 名）。

## 2. 连接

1. [试用注册](https://www.veryreport.com/register?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=oracle)  
2. 数据源 → **Oracle** → Host / Port / Service Name 或 SID / 用户  
3. 测试连接  

SaaS 需网络可达；内网库评估私有化。

## 3. 数据集

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

Oracle 日期比较请按库内类型调整（`DATE` / `TIMESTAMP`）。参数占位以产品为准。

聚合下推示例：

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

## 4. 报表或 BI

- **复杂报表：** 行维 region、度量 amount；参数绑日期。  
- **BI：** 同数据集拖拽维度度量。  

产品：[报表](https://www.veryreport.com/product/report?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=oracle) · [BI](https://www.veryreport.com/product/bi?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=oracle)

## English summary

Run `sample_sales.sql`, add an Oracle datasource in the trial, create a SQL dataset, then build a complex report or BI dashboard. No public Docker/SDK in this hub.

## 相关

[Examples 索引](../README.md) · [FAQ 数据源](../../faq/datasource.md) · [MySQL 版](../mysql/README.md)
