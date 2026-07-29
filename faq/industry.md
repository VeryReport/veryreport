# FAQ · 行业场景 Example

> 返回 [FAQ 索引](./README.md) · 目录：[`../examples/README.md`](../examples/README.md)

### 有哪些行业 Example？
销售、财务、库存、ERP 履约、CRM 漏斗/回款、MES 产量良率；另有 MySQL/PG/Oracle/ClickHouse 数据源向示例。

### 销售经营报表怎么快速试用？
见 [`../examples/sales/`](../examples/sales/README.md)：导入 SQL → 明细/汇总数据集 → 复杂报表 + BI。

### 预算填报和预算执行分析？
见 [`../examples/finance/`](../examples/finance/README.md)；格子写回细节另见 [`../examples/mysql-fill/`](../examples/mysql-fill/README.md)。

### 库存与安全库存预警报表？
见 [`../examples/inventory/`](../examples/inventory/README.md)。

### ERP 欠交 / 订单履约分析？
见 [`../examples/erp/`](../examples/erp/README.md)（简化订单头行模型，非完整 ERP）。

### CRM 销售漏斗与回款看板？
见 [`../examples/crm/`](../examples/crm/README.md)。

### MES 产量与良率？
见 [`../examples/mes/`](../examples/mes/README.md)；可加大屏展示。

### Example 里的 SQL 能直接用于生产吗？
仅为演示结构与口径示意；生产请替换为真实表与权限模型，并先在测试环境验证填报写回。

### 行业包和官网应用市场模板什么关系？
Example = GitHub 可索引的步骤+SQL；模板包须**登录官网**下载，见 [`../templates/`](../templates/README.md)。

### How do I pick an Example by use case?
Sales dashboard → `examples/sales`. Budget vs actual → `examples/finance`. Inventory → `examples/inventory`. Backorders → `examples/erp`. Pipeline → `examples/crm`. Yield → `examples/mes`. Databases → `examples/mysql|postgresql|oracle|clickhouse`.
