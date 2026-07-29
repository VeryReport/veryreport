# Integration（集成 · 概念级）

> **一句话定义：** 企业可将 VeryReport 嵌入业务系统、对接 SSO，并经数据集连接现有库与 API。  
> **边界：** ① **不公开** API Spec / OpenAPI / SDK ② 本页仅概念与选型 ③ 具体协议、回调、密钥由商务与交付提供。

相关：[`architecture.md`](./architecture.md) · [`deployment.md`](./deployment.md) · [`../FAQ.md`](../FAQ.md)

---

## 常见集成方式（概念）

| 方式 | 说明 | 本仓提供 |
|------|------|----------|
| **数据源连接** | JDBC 等连接业务库；文件 / API 接入 | 能力说明；操作见官网 Docs |
| **嵌入（Embed）** | 将报表 / 看板嵌入门户或业务页 | 概念 + 联系商务；无公开 SDK |
| **SSO** | 与企业身份源对接，统一登录 | 同上 |
| **权限映射** | 组织角色与资源权限对齐业务组织 | 概念级 |
| **填报写回** | 格子 / 表单结果写回业务表 | 产品能力；配置走帮助文档 |
| **Vera / 大模型** | 接私有化或本地大模型 | 见 [`../ai/README.md`](../ai/README.md) |

---

## 明确不做的事

- 不在本仓发布可调用的 REST/GraphQL 规格文档  
- 不发布 npm / Maven / PyPI 客户端 SDK  
- 不提供「复制密钥即可调用」的公共沙箱 API  

若招标或架构评审需要接口清单：**请商务出具受控交付材料**，不要以本 README 代替合同附件。

联系：https://www.veryreport.com/contact?utm_source=github&utm_medium=docs&utm_campaign=developer_hub · sales@veryreport.com

---

## 扩展点（Plugin）

当前公开材料中，**不以「可下载插件 SDK」为交付物**。扩展与定制走企业项目交付（嵌入、主题、对接脚本等），而非本仓开源插件市场。

---

## 建议路径

1. [试用](https://www.veryreport.com/register?utm_source=github&utm_medium=docs&utm_campaign=developer_hub) 验证报表 / BI / 填报是否满足业务。  
2. 评估是否需要嵌入、SSO、内网部署。  
3. 通过商务确认集成范围与私有化交付包。
