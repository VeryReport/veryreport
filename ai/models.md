# 模型接入（私有化 / 本地大模型）

> **一句话定义：** Vera 可对接企业侧大模型（含 OpenAI 兼容、国产与本地部署路线），以满足**数据不出域**。  
> **边界：** ① 能力级说明，**无**公开配置文件或 SDK ② 具体模型清单与参数以产品版本 / 交付文档为准 ③ 不保证本文枚举的第三方模型名永久支持。

联系交付：https://www.veryreport.com/contact?utm_source=github&utm_medium=ai&utm_campaign=developer_hub&utm_content=models

---

## 为什么要接私有模型

| 诉求 | 说明 |
|------|------|
| 数据不出域 | 问数提示与结果不经过公网模型 |
| 合规 / 等保 | 与私有化 VeryReport 同机房或专有云 |
| 成本与稳定性 | 企业已采购的推理集群复用 |

SaaS 试用默认模型策略以官网说明为准；私有化模型接入走商务与交付。

---

## 常见路线（概念）

检索常问：*DeepSeek 报表*、*本地大模型 BI*、*Qwen Chat BI*、*OpenAI-compatible NLQ*。

| 类型 | 说明 |
|------|------|
| OpenAI 兼容接口 | 企业网关若提供兼容 endpoint，可由交付评估接入 |
| 国产 / 开源商用模型 | 如 DeepSeek、Qwen 等（以当时产品支持矩阵为准） |
| 本地 / 私有化推理 | 与 VeryReport 私有化同属内网 |

**本文不提供** API Key 填写截图逐步教程（易过期）；需要实施时请商务出具当前版本接入说明。

---

## 与 MCP / Tool Calling

外部 Agent 通过 MCP 调用 VeryReport **不是**本公开仓交付物。见 [mcp-tool-calling.md](./mcp-tool-calling.md)。

---

## English

Vera can use **private/local LLMs** (including OpenAI-compatible gateways and common Chinese models) so analytics stay on-premises. Configuration is via enterprise delivery — **no** public SDK or sample `.env` in this hub.
