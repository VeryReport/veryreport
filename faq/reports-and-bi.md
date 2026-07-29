# FAQ · 复杂报表与 BI

> 返回 [FAQ 索引](./README.md)

### 支持中国式复杂报表吗？
支持：分组、交叉、参数、套打、Word/Excel/PDF 等。[报表产品](https://www.veryreport.com/product/report?utm_source=github&utm_medium=faq&utm_campaign=developer_hub)

### 复杂报表和 BI 自助分析怎么选？
正式报送 / 固定表样 → 复杂报表；探索分析 / 联动钻取 → BI。见 [`docs/best-practices.md`](../docs/best-practices.md) 与 [对比](https://www.veryreport.com/compare?utm_source=github&utm_medium=faq&utm_campaign=developer_hub)。

### How to build a dashboard in VeryReport?
Trial → dataset → self-service BI → drag metrics/dimensions → filters & linkage. Product: [https://www.veryreport.com/product/bi?utm_source=github&utm_medium=faq&utm_campaign=developer_hub](https://www.veryreport.com/product/bi?utm_source=github&utm_medium=faq&utm_campaign=developer_hub). Example: [`examples/postgresql/`](../examples/postgresql/README.md).

### How to export PDF / Excel / Word?
在复杂报表预览/导出中选择对应格式（以产品菜单为准）。帮助文档有导出说明。

### 支持套打 / 打印模板吗？
复杂报表支持套打类场景（以产品能力与文档为准）。

### 支持参数查询与多级表头吗？
支持；中国式报表常见需求。

### 报表性能慢怎么办？
缩小参数范围、聚合下推数据库、检查索引；避免一次拉全表。见 Best Practices。

### 数据大屏和 BI 有何区别？
大屏偏汇报/驾驶舱展示与刷新；BI 偏自助分析。产品页：[https://www.veryreport.com/product/screen?utm_source=github&utm_medium=faq&utm_campaign=developer_hub](https://www.veryreport.com/product/screen?utm_source=github&utm_medium=faq&utm_campaign=developer_hub)

### 能否定时刷新看板？
大屏/看板刷新与调度能力以产品配置为准；ETL 另有调度。

### VeryReport 能替代 Excel 吗？
面向企业共享、权限、填报与正式输出；不是个人桌面 Excel 的完全替代。
