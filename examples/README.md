# Examples

> **一句话定义：** 本目录沉淀「数据源 / 行业场景」向的可复制说明（SQL、步骤、截图链接），服务 SEO / GEO 长尾。  
> **边界：** ① 不替代 [官网帮助](https://www.veryreport.com/docs?utm_source=github&utm_medium=example&utm_campaign=developer_hub) ② 与产品真实能力一致 ③ 体验走 [试用](https://www.veryreport.com/register?utm_source=github&utm_medium=example&utm_campaign=developer_hub)，本仓无安装包。

## 已发布

### 数据源

| Example | 场景 | 关键词向 |
|---------|------|----------|
| [**mysql/**](./mysql/README.md) | MySQL → 复杂报表 | MySQL 报表、交叉表 |
| [**mysql-fill/**](./mysql-fill/README.md) | MySQL 格子填报写回 | 填报、write-back |
| [**postgresql/**](./postgresql/README.md) | PostgreSQL → BI / 报表 | Postgres BI |
| [**oracle/**](./oracle/README.md) | Oracle → 报表 / BI | how to connect Oracle |
| [**clickhouse/**](./clickhouse/README.md) | ClickHouse 下推分析 | ClickHouse BI |

### 行业

| Example | 场景 | 关键词向 |
|---------|------|----------|
| [**sales/**](./sales/README.md) | 销售经营报表 + BI | 销售报表、sales dashboard |
| [**finance/**](./finance/README.md) | 预算填报 + 预算 vs 实际 | budget vs actual、财务分析 |

## 规划

```text
examples/
  数据源 + sales/ finance/     ✅
  inventory/ erp/ crm/ …      ⏳
```

每个 Example：`README.md` + SQL + 截图 URL + CTA（`utm_medium=example`）+ 可选 `meta.json`。

## 现在怎么体验

1. [注册试用](https://www.veryreport.com/register?utm_source=github&utm_medium=example&utm_campaign=developer_hub)  
2. 任选上表导入演示 SQL 并连接  
3. 或按 [帮助文档](https://www.veryreport.com/docs?utm_source=github&utm_medium=example&utm_campaign=developer_hub) 用自有库  
