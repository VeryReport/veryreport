# 财务预算与执行（Finance）

> **一句话定义：** 预算编制（格子填报写回）+ 预算执行分析报表/BI 的财务向示例。  
> **边界：** 演示表；写回须在测试库验证；包体/产品走 [试用](https://www.veryreport.com/register?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=finance)。

| | |
|---|---|
| **English** | Budget entry (fill) + budget vs actual analytics |
| **库表** | MySQL |
| **模块** | 复杂报表填报 · 数据集 · BI / 复杂报表 |
| **Files** | [`sample_finance.sql`](./sample_finance.sql) · [`meta.json`](./meta.json) |

![填报/表单示意](https://www.veryreport.com/images/product/form-designer-panel.png)

---

## 业务问题

1. 各**成本中心**年预算如何在表样中修订并写回？  
2. 预算 vs **实际发生**差异如何出正式表与看板？  
3. 财务要归档 PDF，业务要看差异排名。

检索向：*预算填报*、*budget vs actual report*、*财务分析报表 BI*。

---

## 1. 导入数据

执行 [`sample_finance.sql`](./sample_finance.sql)：

| 表 | 用途 |
|---|---|
| `vr_fin_budget` | 预算（可填报写回 `budget_amt`） |
| `vr_fin_actual` | 实际发生（只读分析） |

格子填报专项亦可参考 [`../mysql-fill/`](../mysql-fill/README.md)。

---

## 2. 预算填报（写回）

数据集：

```sql
SELECT id, fiscal_year, cost_center, budget_amt, remark
FROM vr_fin_budget
WHERE fiscal_year = :fiscal_year
```

1. 复杂报表绑该数据集，预算金额格加填报控件  
2. 填报设置：按主键 `id` 更新 `budget_amt`  
3. 填报预览提交 → SQL 校验  

概述：  
https://www.veryreport.com/docs/operating-instructions/data-analysis/report/fill-app/fill-overview?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=finance

---

## 3. 预算 vs 实际分析

```sql
SELECT
  b.cost_center,
  b.budget_amt,
  COALESCE(SUM(a.actual_amt), 0) AS actual_sum,
  b.budget_amt - COALESCE(SUM(a.actual_amt), 0) AS variance_amt,
  CASE
    WHEN b.budget_amt = 0 THEN NULL
    ELSE ROUND(COALESCE(SUM(a.actual_amt), 0) / b.budget_amt * 100, 1)
  END AS exec_pct
FROM vr_fin_budget b
LEFT JOIN vr_fin_actual a
  ON a.cost_center = b.cost_center
 AND a.fiscal_year = b.fiscal_year
 AND a.biz_date >= :start_date
 AND a.biz_date <  :end_date
WHERE b.fiscal_year = :fiscal_year
GROUP BY b.cost_center, b.budget_amt
```

| 产出 | 做法 |
|------|------|
| 差异表 | 复杂报表：成本中心、预算、实际、差异、执行率 → 导出 PDF |
| 差异看板 | BI：执行率条形、超支高亮（条件以产品为准） |

---

## 4. 步骤清单

1. [试用注册](https://www.veryreport.com/register?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=finance)  
2. 导入 SQL，连接 MySQL  
3. 先做**填报**写回一条预算，再做 **vs 实际** 数据集  
4. 出报表 + BI；需要审批流时改走**表单填报**（勿与格子填报混淆）  

---

## English summary

Finance sample: **budget cell fill** into MySQL plus **budget vs actual** report/BI. Use fill-overview docs for control mapping. No binaries in this hub — trial or on-premises delivery only.

## 相关

[sales](../sales/README.md) · [mysql-fill](../mysql-fill/README.md) · [FAQ 填报](../../faq/fill.md)
