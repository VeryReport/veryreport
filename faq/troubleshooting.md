# FAQ · 排查与常见报错（技术向）

> 返回 [FAQ 索引](./README.md) · 详细日志解读以官网帮助 / 交付支持为准。

### 数据源测试连接失败？
查主机端口、账号权限、防火墙/白名单；SaaS 场景确认云端能否访问你的库。

### 数据集预览报 SQL 语法错误？
在源库客户端先跑通同一 SQL；注意各库日期函数与参数占位差异。

### 报表预览很慢或超时？
缩小日期参数、聚合下推、检查索引；避免 `SELECT *` 无过滤。见 [`../docs/best-practices.md`](../docs/best-practices.md)。

### 交叉表行列空白？
检查维度字段空值、数据集过滤是否过严、参数是否未传。

### 导出 PDF 版式错乱？
检查纸张方向、合并单元格与分页设置；先导出 Excel 对比数据是否正确。

### 填报提交成功但库中无变化？
核对填报设置的插入/更新策略、主键映射、库账号是否有 UPDATE 权限；直接 SQL 查目标表。

### 填报提示校验失败？
查控件必填、数值格式、唯一键冲突。

### Vera 问数答非所问？
优化数据集字段名与口径；查看生成 SQL 并手工修正；限制用户可见数据集范围。

### Vera 提示无权限？
与人工打开该数据集权限一致；先让同账号能在 BI/报表中查到数。

### 嵌入页面打不开报表？
属企业集成问题：鉴权、域名白名单、HTTPS 混合内容等，由交付排查；本仓无公开 Embed SDK。

### 私有化许可证过期表现？
以产品提示为准；联系商务续期。[联系表单](https://www.veryreport.com/contact?utm_source=github&utm_medium=faq&utm_campaign=developer_hub)

### 中文路径或字段乱码？
统一库表 UTF-8（如 MySQL `utf8mb4`）；检查连接字符集。

### 时区导致日期差一天？
统一服务器 / 数据库 / 报表时区策略；参数用显式日期边界。

### 并发高时报表排队？
评估私有化并发授权与底层库压力；由售前做容量规划。

### 如何获取支持？
sales@veryreport.com · 021-64311015 · [联系](https://www.veryreport.com/contact?utm_source=github&utm_medium=faq&utm_campaign=developer_hub) · [社区](https://www.veryreport.com/community?utm_source=github&utm_medium=faq&utm_campaign=developer_hub)
