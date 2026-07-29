# 模板说明 · 多源清洗入主题表（ETL）

> **一句话定义：** 将多源明细清洗转换后落入主题表，再供报表 / BI / Vera 使用的 ETL 流程说明。  
> **下载：** 须 [登录官网应用市场](https://www.veryreport.com/market?utm_source=github&utm_medium=template&utm_campaign=developer_hub&utm_content=etl_multi_source) 获取；本仓不托管作业包。

| | |
|---|---|
| **类型** | ETL Template |
| **模块** | 数据集成 ETL · 数据集 |
| **下游** | 复杂报表 / BI / Vera |

![ETL 设计器示意](https://www.veryreport.com/images/product/etl-designer-panel.png)

---

## 适用场景

- 业务库字段杂乱，不适合直接绑报表  
- 需要定时同步到分析主题表  
- 希望报表与 Vera **同源口径**

## 建议链路

```text
源表 A / B / 文件 ──▶ ETL 清洗转换 ──▶ 主题表 ──▶ 数据集 ──▶ 报表 / BI / Vera
```

| 步骤 | 要点 |
|------|------|
| 抽取 | JDBC / 文件等（以产品支持为准） |
| 转换 | 字段映射、空值、码表、日期标准化 |
| 加载 | 写入主题库表 |
| 调度 | 按日/时调度（产品内配置） |

## 获取步骤

1. [注册登录](https://www.veryreport.com/register?utm_source=github&utm_medium=template&utm_campaign=developer_hub&utm_content=etl_multi_source)  
2. [应用市场](https://www.veryreport.com/market?utm_source=github&utm_medium=template&utm_campaign=developer_hub&utm_content=etl_multi_source) 查找 ETL / 数据准备类模板  
3. **登录后下载**；按说明替换源连接  

## 替代路径

阅读 [`docs/best-practices.md`](../../docs/best-practices.md) 与 [`faq/etl-and-schedule.md`](../../faq/etl-and-schedule.md)，在试用中手建一条 ETL。

产品：https://www.veryreport.com/product/etl?utm_source=github&utm_medium=template&utm_campaign=developer_hub&utm_content=etl_multi_source

## English

**ETL template** landing page for multi-source cleansing into a subject table. Download only after **login** on the official site; no binaries in this repository.
