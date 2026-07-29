# CRM 商机与回款分析（CRM）

> **一句话定义：** 用商机漏斗 + 回款流水做销售漏斗报表与回款 BI（简化 CRM 模型）。  
> **边界：** 非完整 CRM 产品；体验走 [试用](https://www.veryreport.com/register?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=crm)。

| | |
|---|---|
| **English** | CRM pipeline & collections analytics with VeryReport |
| **库表** | MySQL |
| **模块** | 数据集 · 复杂报表 · BI ·（可选）Vera |
| **Files** | [`sample_crm.sql`](./sample_crm.sql) · [`meta.json`](./meta.json) |

![BI](https://www.veryreport.com/images/product/bi-dashboard-built.png)

---

## 业务问题

1. 各阶段（线索→商机→成交）**金额与单数**？  
2. 本月**回款**按客户/销售员？  
3. 销管要漏斗表，财务要回款看板。

检索向：*CRM 报表*、*销售漏斗 BI*、*回款分析报表*、*pipeline dashboard*。

---

## 1. 导入数据

执行 [`sample_crm.sql`](./sample_crm.sql)：

| 表 | 用途 |
|---|---|
| `vr_crm_opportunity` | 商机（阶段、金额、负责人、预计成交日） |
| `vr_crm_payment` | 回款流水 |

---

## 2. 数据集建议

**漏斗汇总：**

```sql
SELECT
  stage,
  owner_name,
  COUNT(*) AS opp_cnt,
  SUM(amount) AS amount_sum
FROM vr_crm_opportunity
WHERE created_date >= :start_date
  AND created_date <  :end_date
GROUP BY stage, owner_name
```

**回款明细：**

```sql
SELECT
  pay_date,
  customer_name,
  owner_name,
  pay_amt,
  pay_method
FROM vr_crm_payment
WHERE pay_date >= :start_date
  AND pay_date <  :end_date
```

---

## 3. 产出

| 产出 | 做法 |
|------|------|
| 漏斗交叉表 | 复杂报表：阶段 × 负责人，度量=金额/单数 |
| 回款看板 | BI：按日回款趋势、销售员对比、回款方式构成 |
| Vera（可选） | 「本月回款最多的销售员」 |

与销售经营联动：[`../sales/`](../sales/README.md)

---

## 4. 步骤

1. [注册试用](https://www.veryreport.com/register?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=crm)  
2. 导入 SQL → 建漏斗/回款数据集  
3. 报表 + BI  

产品：[BI](https://www.veryreport.com/product/bi?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=crm) · [报表](https://www.veryreport.com/product/report?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=crm)

---

## English summary

Simplified **CRM pipeline + collections** sample. Build a funnel cross-tab and a payments dashboard from `sample_crm.sql`. Trial only — no CRM/source binaries in this hub.

## 相关

[sales](../sales/README.md) · [erp](../erp/README.md) · [Examples](../README.md)
