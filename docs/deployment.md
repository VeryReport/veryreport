# Deployment（部署概述）

> **一句话定义：** VeryReport 支持 **SaaS 订阅** 与 **私有化（企业内网）** 两种交付形态，功能原则一致。  
> **边界：** ① 本页只讲选型与边界 ② **不提供**完整安装包、脚本或可公开 `docker pull` ③ 安装与运维由商务/交付提供。

相关：[`architecture.md`](./architecture.md) · [`integration.md`](./integration.md)

---

## 怎么选

| 需求 | 建议 |
|------|------|
| 快速验证、连接云可达的库 | [SaaS 试用 / 订阅](https://www.veryreport.com/register?utm_source=github&utm_medium=docs&utm_campaign=developer_hub) |
| 数据不出域、内网库、等保/审计 | 私有化；从 [联系我们](https://www.veryreport.com/contact?utm_source=github&utm_medium=docs&utm_campaign=developer_hub) 走交付 |
| 先试用再采购 | SaaS 约 **30 天全功能** → 再谈私有化或续订（以官网为准） |

定价入口：https://www.veryreport.com/price?utm_source=github&utm_medium=docs&utm_campaign=developer_hub  

私有化授权按并发规模，以官网定价与商务报价为准。

---

## SaaS

- 首购约 **¥300**/人/年（以 [定价页](https://www.veryreport.com/price?utm_source=github&utm_medium=docs&utm_campaign=developer_hub) 实时为准）。
- 浏览器访问；注册即可开始建数据集与报表。  
- 需保证 VeryReport 云端到你的数据源网络连通（防火墙/白名单按交付或帮助文档指引）。  
- 适合 POC、互联网可达库、快速培训。

---

## 私有化

- 部署在企业机房 / 私有云；数据与元数据可留在内网。  
- **安装包、版本矩阵、中间件要求、升级手册不在本公开仓发布。**  
- 可接私有化 / 本地大模型（Vera），满足数据不出域诉求。  

交付范围（概念）：应用服务、依赖中间件指引、授权与并发、可选高可用方案——以合同与交付文档为准。

---

## Docker / Kubernetes

本 Developer Hub **不提供**官方公开镜像名或 Helm Chart 供自行 `docker pull` / `helm install`。

若企业交付包含容器化制品，由交付团队在受控渠道提供，**请勿**在 Issues 中索要虚构的公共镜像标签。

**替代路径：** 用 [SaaS 试用](https://www.veryreport.com/register?utm_source=github&utm_medium=docs&utm_campaign=developer_hub) 验证功能；私有化再走商务。

---

## 本仓与产品的关系

| | |
|---|---|
| 本 GitHub 仓 | 宣传与开发者说明，**无**可运行产品二进制 |
| 产品获取 | SaaS 注册，或私有化商务交付 |

见根目录 [`NOTICE`](../NOTICE) 与 [`FAQ.md`](../FAQ.md)。
