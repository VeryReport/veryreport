# FAQ · 填报

> 返回 [FAQ 索引](./README.md) · Example：[`examples/mysql-fill/`](../examples/mysql-fill/README.md)

### 报表格子里能改数并写回数据库吗？
可以（复杂报表填报）。概述：  
https://www.veryreport.com/docs/operating-instructions/data-analysis/report/fill-app/fill-overview?utm_source=github&utm_medium=faq&utm_campaign=developer_hub

### 格子填报和表单填报有何区别？
格子填报：在复杂报表表样内订正写库。表单填报：数据中心表单 + 任务/审批。勿混用。

### 支持 Excel 导入后写库吗？
复杂报表填报场景支持 Excel 导入类能力（以当前版本与文档为准）。

### 填报需要主键吗？
强烈建议业务表有稳定主键/唯一键，并在填报设置中正确映射，避免错误 UPDATE。

### 填报能走审批流吗？
任务审批主要在**表单填报**链路；格子填报以写库配置为主。需求复杂时咨询商务/实施。

### 填报失败如何排查？
查填报设置映射、数据库权限、必填校验、主键冲突；先在测试表验证。
