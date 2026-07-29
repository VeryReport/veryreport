# 库存与进销存分析（Inventory）

> **一句话定义：** 用库存快照 + 出入库流水做库存周转 / 呆滞分析报表与 BI。  
> **边界：** 演示数据；体验走 [试用](https://www.veryreport.com/register?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=inventory)；本仓无安装包。

| | |
|---|---|
| **English** | Inventory snapshot & movement analytics with VeryReport |
| **库表** | MySQL |
| **模块** | 数据集 · 复杂报表 · BI |
| **Files** | [`sample_inventory.sql`](./sample_inventory.sql) · [`meta.json`](./meta.json) |

![复杂报表设计器](https://www.veryreport.com/images/product/report-designer-panel.png)

---

## 业务问题

1. 各**仓库 × SKU** 当前库存与安全库存对比？  
2. 近 30 天出入库量、库存周转是否异常？  
3. 仓管要正式库存表，计划要看板预警。

检索向：*库存报表*、*inventory dashboard*、*进销存分析 BI*、*呆滞库存报表*。

---

## 1. 导入数据

执行 [`sample_inventory.sql`](./sample_inventory.sql)：

| 表 | 用途 |
|---|---|
| `vr_inv_snapshot` | 库存快照（仓库、SKU、数量、安全库存、金额） |
| `vr_inv_move` | 出入库流水（类型 in/out） |

---

## 2. 数据集建议

**库存表（复杂报表 / 预警）：**

```sql
SELECT
  warehouse_code,
  sku_code,
  sku_name,
  qty_on_hand,
  safety_qty,
  (qty_on_hand - safety_qty) AS qty_above_safety,
  amount_on_hand,
  CASE
    WHEN qty_on_hand < safety_qty THEN 'LOW'
    WHEN qty_on_hand > safety_qty * 3 THEN 'OVER'
    ELSE 'OK'
  END AS stock_flag
FROM vr_inv_snapshot
WHERE snapshot_date = :snapshot_date
```

**出入库汇总（BI）：**

```sql
SELECT
  move_date,
  warehouse_code,
  move_type,
  SUM(qty) AS qty_sum
FROM vr_inv_move
WHERE move_date >= :start_date
  AND move_date <  :end_date
GROUP BY move_date, warehouse_code, move_type
```

---

## 3. 产出

| 产出 | 做法 |
|------|------|
| 库存一览表 | 复杂报表：仓库、SKU、在手、安全库存、状态；导出 Excel |
| 出入库看板 | BI：按日出入趋势、仓库对比 |
| （可选）大屏 | 仓库库存金额 Top N |

产品：[报表](https://www.veryreport.com/product/report?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=inventory) · [BI](https://www.veryreport.com/product/bi?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=inventory)

---

## 4. 步骤

1. [注册试用](https://www.veryreport.com/register?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=inventory)  
2. 连接 MySQL 并执行 SQL  
3. 建快照 + 流水两个数据集  
4. 出库存表 + 出入库看板  

文档：https://www.veryreport.com/docs?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=inventory

---

## English summary

Inventory sample: snapshot vs safety stock report plus inbound/outbound BI. Load `sample_inventory.sql`, create two datasets, build one complex report and one dashboard. Trial only — no binaries here.

## 相关

[sales](../sales/README.md) · [erp](../erp/README.md) · [Examples 索引](../README.md)
