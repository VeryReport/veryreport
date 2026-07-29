# FAQ · ETL、调度与数据准备

> 返回 [FAQ 索引](./README.md) · 产品：[ETL](https://www.veryreport.com/product/etl?utm_source=github&utm_medium=faq&utm_campaign=developer_hub)

### VeryReport 自带 ETL 吗？
有可视化数据集成 / ETL 能力，用于多源清洗转换后再供报表与 BI 使用。

### 什么时候该先做 ETL？
源表口径乱、跨库难关联、或需要定时落主题表时，优先 ETL，再在主题表上建数据集。

### ETL 能替代数仓吗？
不能也不应这样宣传。VeryReport ETL 支撑报表/分析数据准备，不是完整数据中台替代口径。

### 支持定时调度吗？
ETL / 相关任务支持调度类能力（以产品配置为准）；具体 cron 与依赖以实现为准。

### 清洗后如何给 Vera 用？
ETL 产出表 → 数据集 → Vera 问数（与人工报表同源）。

### 只想用报表、不想用 ETL 可以吗？
可以。数据集直接查业务库即可；脏数据多时再引入 ETL。

### ClickHouse / Doris 适合当分析库吗？
适合作为分析型源库接入；聚合尽量下推。见 [`../examples/clickhouse/`](../examples/clickhouse/README.md)。

### Hive 能接吗？
常见大数据源在支持列表中（以产品内数据源为准）；网络与驱动由环境保障。
