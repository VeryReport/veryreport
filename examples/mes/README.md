# MES 产量与良率分析（MES）

> **一句话定义：** 用产线产量与不良记录做班次产量报表与良率 BI（简化 MES 模型）。  
> **边界：** 非完整 MES；体验走 [试用](https://www.veryreport.com/register?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=mes)。

| | |
|---|---|
| **English** | MES production & yield analytics with VeryReport |
| **库表** | MySQL |
| **模块** | 数据集 · 复杂报表 · BI ·（可选）大屏 |
| **Files** | [`sample_mes.sql`](./sample_mes.sql) · [`meta.json`](./meta.json) |

![数据大屏示意](https://www.veryreport.com/images/product/screen-designer-panel.png)

---

## 业务问题

1. 各**产线 × 班次**产量、计划达成？  
2. **良率**与不良原因分布？  
3. 车间要日报表，管理层要产线大屏。

检索向：*MES 报表*、*产量良率分析*、*production yield dashboard*、*车间日报*。

---

## 1. 导入数据

执行 [`sample_mes.sql`](./sample_mes.sql)：

| 表 | 用途 |
|---|---|
| `vr_mes_output` | 班次产量（计划/实际） |
| `vr_mes_defect` | 不良明细（原因、数量） |

---

## 2. 数据集建议

**产量达成：**

```sql
SELECT
  work_date,
  line_code,
  shift_code,
  plan_qty,
  actual_qty,
  CASE
    WHEN plan_qty = 0 THEN NULL
    ELSE ROUND(actual_qty / plan_qty * 100, 1)
  END AS achieve_pct
FROM vr_mes_output
WHERE work_date >= :start_date
  AND work_date <  :end_date
```

**良率（产量与不良关联）：**

```sql
SELECT
  o.work_date,
  o.line_code,
  o.actual_qty,
  COALESCE(SUM(d.defect_qty), 0) AS defect_qty,
  CASE
    WHEN o.actual_qty = 0 THEN NULL
    ELSE ROUND((o.actual_qty - COALESCE(SUM(d.defect_qty), 0)) / o.actual_qty * 100, 2)
  END AS yield_pct
FROM vr_mes_output o
LEFT JOIN vr_mes_defect d
  ON d.work_date = o.work_date
 AND d.line_code = o.line_code
 AND d.shift_code = o.shift_code
WHERE o.work_date >= :start_date
  AND o.work_date <  :end_date
GROUP BY o.work_date, o.line_code, o.shift_code, o.actual_qty
```

**不良原因构成：**

```sql
SELECT
  defect_reason,
  SUM(defect_qty) AS defect_sum
FROM vr_mes_defect
WHERE work_date >= :start_date
  AND work_date <  :end_date
GROUP BY defect_reason
```

---

## 3. 产出

| 产出 | 做法 |
|------|------|
| 车间产量日报 | 复杂报表：产线、班次、计划/实际/达成率；导出 PDF |
| 良率看板 | BI：良率趋势、不良原因饼图 |
| 车间大屏 | 产线实时感展示（刷新以产品为准） |

产品：[报表](https://www.veryreport.com/product/report?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=mes) · [BI](https://www.veryreport.com/product/bi?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=mes) · [大屏](https://www.veryreport.com/product/screen?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=mes)

与库存联动：产成品入库见 [`../inventory/`](../inventory/README.md)。

---

## 4. 步骤

1. [试用](https://www.veryreport.com/register?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=mes)  
2. 导入 SQL → 产量/良率/不良数据集  
3. 日报表 + 看板；（可选）大屏  

---

## English summary

Simplified **MES production & yield** sample: shift output vs plan, yield %, defect reasons. Build a daily report, BI dashboard, optional shop-floor screen. Trial only.

## 相关

[inventory](../inventory/README.md) · [erp](../erp/README.md) · [Examples](../README.md)
