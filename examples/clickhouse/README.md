# ClickHouse → VeryReport 分析报表 / BI

> **一句话定义：** 将 ClickHouse 作为分析型数据源接入 VeryReport，把聚合下推到 CH，再做 BI 或复杂报表。  
> **边界：** ① CH 表引擎/权限以你方集群为准 ② 本仓演示 SQL 可按需改库名 ③ 无公开 Docker 产品镜像。

| | |
|---|---|
| **English** | Connect ClickHouse to VeryReport (push-down analytics) |
| **Datasource** | ClickHouse（HTTP/原生协议以产品支持为准） |
| **Files** | [`sample_events.sql`](./sample_events.sql) · [`meta.json`](./meta.json) |

![BI](https://www.veryreport.com/images/product/bi-dashboard-built.png)

---

## 为何适合 ClickHouse

| 点 | 说明 |
|---|---|
| 聚合下推 | `GROUP BY` / 时间窗尽量在 CH 完成 |
| 大数据量 | 明细留 CH，报表只取汇总或抽样窗口 |
| 与 BI 组合 | 经营看板常见路径 |

检索：*ClickHouse BI*、*ClickHouse reporting*、*ClickHouse 报表工具*。

---

## 1. 演示数据

执行 [`sample_events.sql`](./sample_events.sql)（MergeTree 示例；集群用户请改 `ON CLUSTER` 等语法）。

## 2. 连接与数据集

1. [试用](https://www.veryreport.com/register?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=clickhouse) → 添加 ClickHouse 数据源  
2. 数据集推荐**预聚合**：

```sql
SELECT
  toStartOfDay(event_time) AS day,
  region,
  event_type,
  count() AS evt_cnt,
  sum(amount) AS amount_sum
FROM vr_demo_events
WHERE event_time >= :start_ts
  AND event_time <  :end_ts
GROUP BY day, region, event_type
ORDER BY day
```

参数类型与函数名以产品/CH 版本为准。

## 3. BI 或报表

绑定上数据集 → BI 看趋势/构成；需要固定表样时用复杂报表。

产品：[BI](https://www.veryreport.com/product/bi?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=clickhouse) · [Best Practices](../../docs/best-practices.md)

## English summary

Load `sample_events.sql` into ClickHouse, connect from VeryReport trial, create a **push-down aggregate** dataset, then build BI/reports. Prefer aggregates in CH over pulling raw events into the report engine.

## 相关

[Examples](../README.md) · [FAQ](../../faq/datasource.md) · [PostgreSQL](../postgresql/README.md)
