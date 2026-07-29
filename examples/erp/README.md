# ERP 订单履约分析（ERP）

> **一句话定义：** 从订单头/行演示表分析接单、发货、欠交，输出履约报表与经营看板。  
> **边界：** 简化 ERP 模型（非完整 ERP）；体验走 [试用](https://www.veryreport.com/register?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=erp)。

| | |
|---|---|
| **English** | Order fulfillment analytics (ERP-style) with VeryReport |
| **库表** | MySQL |
| **模块** | 数据集 · 复杂报表 · BI ·（可选）Vera 问数 |
| **Files** | [`sample_erp_orders.sql`](./sample_erp_orders.sql) · [`meta.json`](./meta.json) |

![BI](https://www.veryreport.com/images/product/bi-dashboard-built.png)

---

## 业务问题

1. 各客户/业务员**接单金额**与开单数？  
2. **已发货 vs 欠交**数量、金额？  
3. 计划要交叉表，销售要看板，管理层可用 Vera 追问。

检索向：*ERP 报表*、*订单履约分析*、*order fulfillment dashboard*、*欠交报表*。

---

## 1. 导入数据

执行 [`sample_erp_orders.sql`](./sample_erp_orders.sql)：

| 表 | 用途 |
|---|---|
| `vr_erp_order` | 订单头（客户、业务员、状态、日期） |
| `vr_erp_order_line` | 订单行（SKU、订量、已发、单价） |

---

## 2. 数据集建议

**履约明细：**

```sql
SELECT
  o.order_no,
  o.order_date,
  o.customer_name,
  o.sales_rep,
  o.status,
  l.sku_code,
  l.qty_ordered,
  l.qty_shipped,
  (l.qty_ordered - l.qty_shipped) AS qty_backorder,
  l.unit_price,
  (l.qty_ordered * l.unit_price) AS amount_ordered,
  (l.qty_shipped * l.unit_price) AS amount_shipped
FROM vr_erp_order o
JOIN vr_erp_order_line l ON l.order_id = o.id
WHERE o.order_date >= :start_date
  AND o.order_date <  :end_date
```

**欠交汇总（下推）：**

```sql
SELECT
  o.customer_name,
  o.sales_rep,
  SUM(l.qty_ordered - l.qty_shipped) AS qty_backorder,
  SUM((l.qty_ordered - l.qty_shipped) * l.unit_price) AS amount_backorder
FROM vr_erp_order o
JOIN vr_erp_order_line l ON l.order_id = o.id
WHERE o.order_date >= :start_date
  AND o.order_date <  :end_date
  AND l.qty_ordered > l.qty_shipped
GROUP BY o.customer_name, o.sales_rep
```

---

## 3. 产出

| 产出 | 做法 |
|------|------|
| 订单履约表 | 复杂报表：订单号、客户、订量、已发、欠交；参数日期 |
| 欠交看板 | BI：客户欠交金额 Top、业务员对比 |
| Vera（可选） | 「本月欠交金额最高的客户」——[`../../ai/chat-bi.md`](../../ai/chat-bi.md) |

与库存联动：欠交 SKU 对照 [`../inventory/`](../inventory/README.md) 快照。

---

## 4. 步骤

1. [试用](https://www.veryreport.com/register?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=erp)  
2. 导入 SQL → 数据集  
3. 报表 + BI；（可选）开放 Vera  

产品：[报表](https://www.veryreport.com/product/report?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=erp) · [BI](https://www.veryreport.com/product/bi?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=erp)

---

## English summary

ERP-style **order fulfillment** sample: orders + lines, backorder report and dashboard. Not a full ERP — analytics on simplified tables. Trial only.

## 相关

[inventory](../inventory/README.md) · [sales](../sales/README.md) · [CRM 可后续扩展](../README.md)
