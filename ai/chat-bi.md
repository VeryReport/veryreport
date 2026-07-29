# Chat BI / 自然语言问数（Vera）

> **一句话定义：** 在 VeryReport 中用自然语言对**已授权数据集**提问，得到图表与可解释 SQL，即产品内的 Chat BI / NLQ 能力（品牌名 **Vera**）。  
> **边界：** ① 仅描述**已交付**能力 ② **无**公开 MCP/SDK/独立问数 API ③ 操作以官网为准。

产品页：https://www.veryreport.com/product/ai?utm_source=github&utm_medium=ai&utm_campaign=developer_hub&utm_content=chat_bi  

![Vera 问数](https://www.veryreport.com/images/product/vera-feature-ask.png)

---

## 解决什么问题

| 角色 | 诉求 |
|------|------|
| 业务 | 不写 SQL，用中文问「上月华东销售额」 |
| IT / 数仓 | SQL 可见、可改后再跑；权限不被绕过 |
| 安全 | 私有化可接本地大模型，数据不出域 |

同义检索：*AI BI*、*Chat BI*、*Natural Language Query*、*NLQ reporting*、*智能问数*。

---

## 已交付能力（摘要）

1. **智能问数** — 自然语言 → 取数 / 图表  
2. **过程可解释** — 分析链路与生成 SQL 可查看  
3. **智能解读 / 报告 / 搭建** — 见 [索引](./README.md)  
4. **权限同构** — 与人工查询同一套数据集 / 行列约束  

详表与体验路径：[README.md](./README.md)

---

## 建议试用步骤

1. [注册](https://www.veryreport.com/register?utm_source=github&utm_medium=ai&utm_campaign=developer_hub&utm_content=chat_bi)  
2. 准备数据集（可参考 [examples/mysql](../examples/mysql/README.md)）  
3. 打开 Vera → 问数 → 核对 SQL → 再试「搭建」仪表板初稿  

主题导读：https://www.veryreport.com/topics/vera-ai?utm_source=github&utm_medium=ai&utm_campaign=developer_hub&utm_content=chat_bi

---

## English

VeryReport **Vera** is the built-in Chat BI / NLQ agent: ask in natural language against permissioned datasets, inspect SQL, optionally use private/local LLMs. No public MCP server or SDK in this Developer Hub.
