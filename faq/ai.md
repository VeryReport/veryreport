# FAQ · Vera AI

> 返回 [FAQ 索引](./README.md) · 专区：[`ai/`](../ai/README.md)

### Vera AI 能做什么？
问数、解读、报告、搭建仪表板初稿；SQL 可解释；可接私有化/本地大模型。[产品页](https://www.veryreport.com/product/ai?utm_source=github&utm_medium=faq&utm_campaign=developer_hub)

### AI 会绕过行级权限吗？
产品设计为与人工查询同一套数据集/权限约束。见 [`ai/semantic-layer-permissions.md`](../ai/semantic-layer-permissions.md)。

### 支持 Chat BI / Natural Language Query 吗？
支持（Vera 问数）。见 [`ai/chat-bi.md`](../ai/chat-bi.md)。

### 有公开 MCP Server 或 AI SDK 吗？
**没有。** 见 [`ai/mcp-tool-calling.md`](../ai/mcp-tool-calling.md)。

### 能否接 DeepSeek / 本地大模型？
私有化场景可评估接入；配置走交付。见 [`ai/models.md`](../ai/models.md)。

### 问数结果不准确怎么办？
检查数据集口径与权限；查看并修正生成的 SQL 后重跑；补充清晰字段命名与业务含义。
