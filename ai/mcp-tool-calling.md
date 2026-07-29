# MCP / Tool Calling / RAG（边界说明）

> **一句话定义：** 业界常用 MCP、Tool Calling、RAG 讨论 Chat BI 扩展；在 VeryReport **公开 Developer Hub** 中，这些**不**以可调用规格或 SDK 形式发布。  
> **边界（PRD §14）：** 不公开 API Spec / SDK；下文只澄清概念与产品真实边界，避免检索到「假 docker / 假 MCP server」。

---

## 检索意图 vs 本仓事实

| 常见检索 | 本仓事实 |
|----------|----------|
| `Chat BI MCP` | **无**公开 MCP Server 地址或 Tool schema |
| `AI BI Java SDK` | **无**公开 Java/Python SDK |
| `RAG semantic layer reporting` | 语义入口是**数据集**；RAG 细节不作为开源组件交付 |
| Vera / 智能问数 | **有**产品内能力；经 [试用](https://www.veryreport.com/register?utm_source=github&utm_medium=ai&utm_campaign=developer_hub&utm_content=mcp) 体验 |

真正可体验的路径：[chat-bi.md](./chat-bi.md) · 产品页 https://www.veryreport.com/product/ai?utm_source=github&utm_medium=ai&utm_campaign=developer_hub&utm_content=mcp

---

## 若企业需要「Agent 调报表」

1. 先确认业务是否可用 **嵌入报表 / 门户** + SSO（概念见 [integration.md](../docs/integration.md)）。  
2. Vera 问数解决「人在产品内对话取数」。  
3. 若需系统级 API / Agent 协议：由**商务与交付**提供受控材料，不以本 README 代替。

联系：https://www.veryreport.com/contact?utm_source=github&utm_medium=ai&utm_campaign=developer_hub&utm_content=mcp

---

## English

This hub documents **Vera inside VeryReport** (NLQ, explainable SQL, private LLMs). It does **not** publish MCP servers, tool-calling SDKs, or OpenAPI. For agent-style system integration, contact sales for controlled enterprise materials.
