# FAQ · 数据源与数据集

> 返回 [FAQ 索引](./README.md) · Examples：[`examples/`](../examples/README.md)

### 支持哪些常见数据库？
常见如 MySQL、Oracle、PostgreSQL、Hive、ClickHouse、Doris 等；亦支持 Excel/CSV 与 API。完整列表以产品内配置与帮助文档为准。

### How to connect Oracle to VeryReport?
1. [Trial](https://www.veryreport.com/register?utm_source=github&utm_medium=faq&utm_campaign=developer_hub) → add Oracle datasource (host, port, service/SID, user).  
2. Create a SQL dataset.  
3. Build report or BI.  
Step-by-step UI: official docs. Example sketch: [`examples/oracle/`](../examples/oracle/README.md).

### How to connect MySQL?
见 [`examples/mysql/`](../examples/mysql/README.md)。

### How to connect PostgreSQL?
见 [`examples/postgresql/`](../examples/postgresql/README.md)。

### How to connect ClickHouse?
见 [`examples/clickhouse/`](../examples/clickhouse/README.md)。连接后优先把聚合下推到 CH。

### 数据集和直接写在报表里的 SQL 有何区别？
数据集是可复用的语义入口（报表 / BI / Vera 共用）。推荐口径沉在数据集。见 [`docs/best-practices.md`](../docs/best-practices.md)。

### 支持存储过程 / 视图吗？
常见做法是数据集查询视图；存储过程视驱动与产品版本支持情况，以帮助文档与实测为准。

### 参数怎么传到 SQL？
在数据集中使用产品支持的参数占位，并在报表/预览绑定参数控件。示例见 mysql Example。

### SaaS 连不上我内网数据库？
需网络可达（VPN/公网/白名单）或改用私有化部署。

### 支持 Excel / CSV 上传吗？
支持文件类数据源（以产品内选项为准），适合小规模 POC；生产仍建议库表。

### 跨库关联怎么办？
可在 ETL 落到同一主题库，或按产品是否支持多源数据集评估；复杂跨库优先 ETL。见 [ETL 产品页](https://www.veryreport.com/product/etl?utm_source=github&utm_medium=faq&utm_campaign=developer_hub)。
