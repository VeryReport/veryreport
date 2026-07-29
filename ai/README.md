# Vera AI（Developer Hub）

> **一句话定义：** Vera 是 VeryReport 内置的 AI 数据智能体，覆盖问数、解读、报告、搭建等能力，与报表 / BI 数据同源。  
> **边界：** ① 仅写**已交付**能力 ② **不公开** API Spec / SDK / MCP Server ③ 操作细节以官网为准。

产品页：https://www.veryreport.com/product/ai?utm_source=github&utm_medium=ai&utm_campaign=developer_hub  

![Vera 问数](https://www.veryreport.com/images/product/vera-feature-ask.png)

## 主题页（便于收录）

| 文档 | 检索向 |
|------|--------|
| [Chat BI / 自然语言问数](./chat-bi.md) | AI BI、Chat BI、NLQ、智能问数 |
| [语义层、权限与审计](./semantic-layer-permissions.md) | semantic layer、row-level security、AI 审计 |
| [模型接入（私有化 / 本地）](./models.md) | DeepSeek、Qwen、本地大模型、OpenAI 兼容 |
| [MCP / Tool Calling 边界](./mcp-tool-calling.md) | Chat BI MCP（说明**无**公开规格） |

## 已支持

| 能力 | 说明 |
|------|------|
| 智能问数 | 自然语言 → 取数 / 图表；可展示分析过程与 SQL |
| 智能解读 | 为已有图表生成叙事洞察 |
| 智能报告 | 多章节经营分析类输出 |
| 智能搭建 | 基于数据集一句话生成可编辑仪表板初稿 |
| 过程可解释 | SQL 可见、可修正后再执行 |
| 权限约束 | 与人工查询同一套数据集 / 行列约束 |
| 私有化 / 本地大模型 | 可选企业大模型，数据不出域 |

## 不在本公开仓提供

- 公开 MCP Server、Tool Calling 代码 SDK  
- 可 `clone` 的 AI 运行时源码  
- 脱离官网试用的独立 AI 服务端点  

企业集成：[联系我们](https://www.veryreport.com/contact?utm_source=github&utm_medium=ai&utm_campaign=developer_hub)

## 建议体验路径

1. [注册试用](https://www.veryreport.com/register?utm_source=github&utm_medium=ai&utm_campaign=developer_hub)  
2. 准备数据集（例：[MySQL Example](../examples/mysql/README.md)）  
3. Vera：先问数，再试搭建  

主题导读：https://www.veryreport.com/topics/vera-ai?utm_source=github&utm_medium=ai&utm_campaign=developer_hub  
