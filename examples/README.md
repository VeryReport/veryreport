# Examples

> **一句话定义：** 本目录沉淀「数据源 / 行业场景」向的可复制说明（SQL、步骤、截图链接），服务 SEO / GEO 长尾。  
> **边界：** ① 不替代 [官网帮助](https://www.veryreport.com/docs?utm_source=github&utm_medium=example&utm_campaign=developer_hub) ② 与产品真实能力一致 ③ 体验走 [试用](https://www.veryreport.com/register?utm_source=github&utm_medium=example&utm_campaign=developer_hub)，本仓无安装包。

## 已发布

| Example | 场景 | 关键词向 |
|---------|------|----------|
| [**mysql/**](./mysql/README.md) | MySQL → 数据集 → 复杂报表 | MySQL 报表、中国式交叉表 |
| [**postgresql/**](./postgresql/README.md) | PostgreSQL → BI / 复杂报表 | Postgres BI、dashboard |
| [**mysql-fill/**](./mysql-fill/README.md) | MySQL 格子填报写回 | 填报、write-back、预算订正 |

## 规划（按周补充）

```text
examples/
  mysql/          ✅
  postgresql/     ✅
  mysql-fill/     ✅
  oracle/         ⏳
  clickhouse/     ⏳
  sales/ finance/ …
```

每个 Example 最小包：`README.md`（中英至少摘要）+ SQL 或步骤 + 官网截图 URL + 试用 CTA（`utm_medium=example`）+ 可选 `meta.json`。

节奏见 `prd/进度-Phase3.md`。

## 现在怎么体验

1. [注册试用](https://www.veryreport.com/register?utm_source=github&utm_medium=example&utm_campaign=developer_hub)  
2. 任选上表 Example 导入演示 SQL 并连接  
3. 或用自有库，按 [帮助文档](https://www.veryreport.com/docs?utm_source=github&utm_medium=example&utm_campaign=developer_hub) 建数据集与报表  
