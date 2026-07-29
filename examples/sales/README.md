# 销售经营分析（Sales）

> **一句话定义：** 用演示销售明细做「大区 × 产品线」经营报表 + BI 看板的行业向示例。  
> **边界：** 演示数据；体验走 [试用](https://www.veryreport.com/register?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=sales)；本仓无安装包。

| | |
|---|---|
| **English** | Sales performance reports & BI with VeryReport |
| **库表** | MySQL 兼容（亦可改 PG/Oracle 语法） |
| **模块** | 数据集 · 复杂报表 · BI ·（可选）大屏 |
| **Files** | [`sample_sales_ops.sql`](./sample_sales_ops.sql) · [`meta.json`](./meta.json) |

![BI 看板](https://www.veryreport.com/images/product/bi-dashboard-built.png)

---

## 业务问题

1. 本月各**大区**销售额与目标达成？  
2. **产品线**贡献与同比（演示用环比字段简化）？  
3. 销售经理要一张可导出的正式表，运营要一张可钻取的看板。

检索向：*销售报表工具*、*sales dashboard BI*、*区域销售分析报表*。

---

## 1. 导入数据

执行 [`sample_sales_ops.sql`](./sample_sales_ops.sql)（库 `vr_demo`）：

| 表 | 用途 |
|---|---|
| `vr_sales_fact` | 销售事实（日期、大区、产品线、客户类型、金额、目标） |
| `vr_sales_target` | 月度大区目标（可选关联） |

亦可用更简单的 [`../mysql/sample_sales.sql`](../mysql/sample_sales.sql)。

---

## 2. 数据集建议

**明细（复杂报表 / 填报扩展）：**

```sql
SELECT
  biz_date,
  region,
  product_line,
  customer_type,
  amount,
  target_amt
FROM vr_sales_fact
WHERE biz_date >= :start_date
  AND biz_date <  :end_date
```

**汇总（BI KPI，下推）：**

```sql
SELECT
  region,
  product_line,
  SUM(amount)     AS amount_sum,
  SUM(target_amt) AS target_sum,
  CASE
    WHEN SUM(target_amt) = 0 THEN NULL
    ELSE ROUND(SUM(amount) / SUM(target_amt) * 100, 1)
  END AS achieve_pct
FROM vr_sales_fact
WHERE biz_date >= :start_date
  AND biz_date <  :end_date
GROUP BY region, product_line
```

---

## 3. 落地两份产出

| 产出 | 做法 |
|------|------|
| **正式销售表** | 复杂报表：行=大区，列=产品线，度量=金额；参数=日期；导出 Excel/PDF。[报表产品](https://www.veryreport.com/product/report?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=sales) |
| **经营看板** | BI：KPI（金额/达成率）、趋势、大区条形、品类饼图；筛选器联动。[BI 产品](https://www.veryreport.com/product/bi?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=sales) |
| **汇报大屏（可选）** | 同数据集拖到大屏。[大屏](https://www.veryreport.com/product/screen?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=sales) |

模板说明（登录下载）：[`../../templates/dashboard/sales-ops.md`](../../templates/dashboard/sales-ops.md)

---

## 4. 步骤清单

1. [注册试用](https://www.veryreport.com/register?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=sales)  
2. 连接 MySQL（或你的库）并执行 SQL  
3. 建两个数据集（明细 + 汇总）  
4. 各做一张复杂报表与一张 BI  
5. （可选）Vera 问：「华东标准版本月销售额」——见 [`../../ai/chat-bi.md`](../../ai/chat-bi.md)

操作细节：https://www.veryreport.com/docs?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=sales

---

## English summary

Industry sample for **sales ops**: load `sample_sales_ops.sql`, build detail + aggregate datasets, ship one **complex report** (export) and one **BI dashboard** (explore). Trial only — no product binaries in this hub.

## 相关

[Examples 索引](../README.md) · [finance](../finance/README.md) · [Comparison](../../docs/comparison.md)
