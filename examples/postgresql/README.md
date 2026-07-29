# PostgreSQL → VeryReport BI / 复杂报表

> **一句话定义：** 用 PostgreSQL 作为数据源，在 VeryReport 中建数据集，做自助 BI 看板或中国式复杂报表。  
> **边界：** ① 不替代 [官网帮助](https://www.veryreport.com/docs?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=postgresql) ② 体验走 [试用](https://www.veryreport.com/register?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=postgresql) ③ 本仓无安装包 / 无公开 Docker。

| | |
|---|---|
| **English** | Connect PostgreSQL to VeryReport for BI dashboards & complex reports |
| **Datasource** | PostgreSQL 12+ |
| **Modules** | 数据源 · 数据集 · BI 自助分析 · 复杂报表 |
| **Files** | [`sample_orders.sql`](./sample_orders.sql) · [`meta.json`](./meta.json) |

![BI 自助分析](https://www.veryreport.com/images/product/bi-dashboard-built.png)

---

## 场景

运营看「订单金额按地区 / 品类」趋势：PostgreSQL 存明细，VeryReport 做看板钻取；需要正式表样时再绑同一数据集做复杂报表。

检索意图示例：*PostgreSQL BI*、*Postgres reporting tool*、*how to connect PostgreSQL to dashboard*、*PostgreSQL 中国式报表*。

---

## 1. 导入演示数据

在 PostgreSQL 执行 [`sample_orders.sql`](./sample_orders.sql)（默认 schema `public`，表 `vr_demo_orders`）。

| 列 | 含义 |
|---|---|
| `order_date` | 订单日 |
| `region` | 大区 |
| `category` | 品类 |
| `gmv` | 成交额 |
| `order_cnt` | 订单数 |

---

## 2. 连接 PostgreSQL

1. [注册试用](https://www.veryreport.com/register?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=postgresql)  
2. 数据源 → 新建 **PostgreSQL**  
3. Host / Port / Database / User；测试连接后保存  

SaaS 需网络可达你的 PG 实例；内网库评估 [私有化](https://www.veryreport.com/contact?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=postgresql)。

---

## 3. 数据集 SQL

明细（参数缩小范围）：

```sql
SELECT
  order_date,
  region,
  category,
  gmv,
  order_cnt
FROM vr_demo_orders
WHERE order_date >= :start_date
  AND order_date <  :end_date
```

下推聚合（看板 KPI 更轻）：

```sql
SELECT
  date_trunc('month', order_date)::date AS month_start,
  region,
  category,
  SUM(gmv)       AS gmv_sum,
  SUM(order_cnt) AS order_sum
FROM vr_demo_orders
WHERE order_date >= :start_date
  AND order_date <  :end_date
GROUP BY 1, region, category
```

参数写法以产品内数据集配置为准（命名参数若不支持，改用产品提供的参数占位）。

---

## 4A. 自助 BI 看板

1. 新建仪表板，绑定数据集  
2. 指标：`gmv_sum`；维度：`region` / `category` / `month_start`  
3. 配筛选器（日期、大区），开启联动 / 钻取  
4. 预览分享  

产品：https://www.veryreport.com/product/bi?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=postgresql

## 4B. 复杂报表（可选同一数据集）

行维 `region`、列维或第二维 `category`、度量 `gmv` 求和；加日期参数。见 [MySQL 复杂报表示例](../mysql/README.md) 步骤骨架（换数据源即可）。

产品：https://www.veryreport.com/product/report?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=postgresql

---

## English summary

1. Run [`sample_orders.sql`](./sample_orders.sql) on PostgreSQL.  
2. Add a PostgreSQL datasource in the [VeryReport trial](https://www.veryreport.com/register?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=postgresql).  
3. Create a SQL dataset (detail or `date_trunc` aggregate).  
4. Build a self-service BI dashboard (and optionally a complex report) on the same dataset.

No product source or public image in this hub — SaaS trial or on-premises delivery only.

---

## 相关

- [Examples 索引](../README.md) · [Best Practices](../../docs/best-practices.md) · [FAQ](../../FAQ.md)  
- MySQL 版：[`../mysql/`](../mysql/README.md) · 填报写回：[`../mysql-fill/`](../mysql-fill/README.md)  
