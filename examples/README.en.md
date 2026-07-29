# Examples — English index

> Chinese index: [`README.md`](./README.md) · Trial: https://www.veryreport.com/register?utm_source=github&utm_medium=example&utm_campaign=developer_hub&utm_content=en_index

This folder holds **copy-paste SQL + steps** for SEO/GEO long-tail queries. It is **not** a product install kit. Official UI manuals: https://www.veryreport.com/docs

## Datasource packs

| Pack | Intent |
|------|--------|
| [mysql](./mysql/README.md) | Connect MySQL → complex Chinese-style report |
| [mysql-fill](./mysql-fill/README.md) | Cell fill write-back to MySQL |
| [postgresql](./postgresql/README.md) | PostgreSQL → BI / reports |
| [oracle](./oracle/README.md) | How to connect Oracle |
| [clickhouse](./clickhouse/README.md) | ClickHouse push-down analytics |

## Industry packs

| Pack | Intent | Related |
|------|--------|---------|
| [sales](./sales/README.md) | Sales ops report + dashboard | [crm](./crm/README.md) |
| [finance](./finance/README.md) | Budget fill + budget vs actual | [mysql-fill](./mysql-fill/README.md) |
| [inventory](./inventory/README.md) | Snapshot vs safety stock + moves | [mes](./mes/README.md), [erp](./erp/README.md) |
| [erp](./erp/README.md) | Order fulfillment / backorders | [inventory](./inventory/README.md), [sales](./sales/README.md) |
| [crm](./crm/README.md) | Pipeline + collections | [sales](./sales/README.md) |
| [mes](./mes/README.md) | Production & yield | [inventory](./inventory/README.md) |

## Suggested learning path

1. Pick a **datasource** pack matching your database.  
2. Pick an **industry** pack for business questions.  
3. Optionally open Vera NLQ on the same dataset ([`../ai/chat-bi.md`](../ai/chat-bi.md)).  
4. For downloadable templates (login required): [`../templates/`](../templates/README.md).

## Boundaries

- Commercial product; see [`../NOTICE`](../NOTICE).  
- No public Docker image / API Spec / SDK in this hub.  
- UTM: `utm_source=github&utm_medium=example&utm_campaign=developer_hub`.
