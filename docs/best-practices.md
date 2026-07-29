# Best Practices（最佳实践 · 开发者向）

> **一句话定义：** 用好数据集建模与权限，把计算尽量留在数据库侧，再按场景选择复杂报表 / BI / 填报。  
> **边界：** 原则性建议；逐步点击路径以 [官网帮助](https://www.veryreport.com/docs?utm_source=github&utm_medium=docs&utm_campaign=developer_hub) 为准。

---

## 1. 先数据集，再版式

- 口径、过滤、计算列尽量沉在**数据集**，避免每个报表复制一套 SQL。  
- 同一数据集可被报表、BI、大屏、Vera 复用，减少「各做各的数」。

## 2. 性能：下推优先

- 大数据量过滤、聚合优先在源库完成；避免把百万行先拉到中间层再算。  
- 复杂交叉表注意参数缩小范围（时间、组织等）。  
- 慢查询先查执行计划与索引，而不是先加缓存幻想。

## 3. 报表 vs BI 选型

| 需求 | 优先 |
|------|------|
| 正式报送、固定表样、套打、归档导出 | **复杂报表** |
| 经营探索、联动钻取、自助取数 | **BI 自助分析** |
| 大厅汇报、轮播驾驶舱 | **数据大屏** |

对照选题：https://www.veryreport.com/compare?utm_source=github&utm_medium=docs&utm_campaign=developer_hub

## 4. 两种填报勿混用

| 能力 | 适用 |
|------|------|
| **复杂报表格子填报** | 在已有表样格子里订正、导入 Excel 写库 |
| **数据中心表单填报** | 任务分发、审批流、表单入库 |

概述（官网）：  
https://www.veryreport.com/docs/operating-instructions/data-analysis/report/fill-app/fill-overview?utm_source=github&utm_medium=docs&utm_campaign=developer_hub

## 5. 权限与 Vera

- 先配好数据集与行列权限，再开放问数，避免「AI 看见了不该看见的数」。  
- 解读问数结果时核对生成的 SQL（产品支持过程可解释）。

## 6. ETL 放在「脏数据」之前

源表口径混乱时，用 ETL 落到主题表再建数据集，比在每个报表里写巨型 SQL 更可维护。

## 7. 试用节奏（POC）

1. 接 1～2 个真实库表  
2. 各做一份复杂报表 + 一张 BI 看板  
3. 如有订正需求，试格子填报或表单一条链路  
4. 再评估私有化与集成  

注册：https://www.veryreport.com/register?utm_source=github&utm_medium=docs&utm_campaign=developer_hub

---

更多场景示例将放在 [`../examples/`](../examples/README.md)（按周补充）。
