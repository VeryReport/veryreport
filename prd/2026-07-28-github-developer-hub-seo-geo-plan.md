# VeryReport GitHub Developer Hub — SEO / GEO 执行计划

> **状态：** 仅规划，暂不实现  
> **日期：** 2026-07-28  
> **仓库：** `github/veryreport`（宣传仓，非源码仓）  
> **依据：** CMO 视角「第二官网 / Developer Portal」建议全文  
> **约束：** VeryReport 为**商业软件**；本仓不发布产品源码、不宣称开源  
> **硬原则：** 全部内容必须结合**产品真实能力**生成；CMO 建议只提供信息架构与节奏，**不是功能清单**

---

## 0. 一句话定位

**不要把 GitHub 当代码托管，要当 Developer Marketing 平台。**

| 渠道 | 职责 |
|------|------|
| 官网 | 品牌、商务、定价、案例、试用转化 |
| 产品社区 | 内容与案例软文 |
| 帮助文档 | 产品操作知识 |
| **GitHub** | 开发者信任、技术传播、Google / AI（GEO）可见性 |

建议对外名称：**VeryReport Developer Hub**  
副标：**Enterprise BI Developer Platform**（非 Source Code Repository）

```text
                 VeryReport 官网（转化）
                      │
      ┌───────────────┼────────────────┐
      │               │                │
      ▼               ▼                ▼
 Google SEO      AI / GEO 引用      开发者获取
      │               │                │
      └───────────────┼────────────────┘
                      ▼
           GitHub Developer Hub
      （README · Docs · Examples · FAQ ·
       Templates · AI · Comparison · Discussions）
                      │
                      ▼
              官网注册 / 试用 / 询价
```

---

## 0.5 真实性门禁（必须结合实际功能）

**结论：要结合。** 否则 GitHub 会变成「理想 BI 百科」，开发者一点试用就穿帮，GEO/SEO 长期受损。

### 为什么必须结合

| 维度 | 说明 |
|------|------|
| 信任 | Developer Hub 的核心资产是可信技术表述，不是关键词密度 |
| GEO | AI 会交叉验证官网 / 文档 / GitHub；能力互相矛盾会被降权或标成不可靠 |
| 转化 | Example / FAQ 若写了产品没有的步骤，试用流失与售后成本上升 |
| 法务 | 对比竞品、宣称 MCP/SDK/Docker 等，须与可售卖能力一致 |

### CMO 建议 vs 实际功能：怎么用

| CMO 建议里的块 | 用法 | 禁止 |
|----------------|------|------|
| 信息架构（docs / examples / ai / faq…） | **直接采用**目录与运营节奏 | — |
| Docker / Helm / 公开 SDK / CE 仓 | **仅当**产品已交付且允许公开时再写可执行步骤 | 虚构 `docker pull` / Maven 坐标 |
| 100+ FAQ、每周 Example | 题目从**真实帮助文档、工单、社区、数据源支持列表**出 | 为凑数量编造能力 |
| AI / MCP / Semantic Layer | 按 Vera **已上线**能力写；规划中标「路线图」 | 写成已 GA |
| Template / Demo | 用真实表样/看板说明 + 官网获取 | 假装仓库内可下载完整私有安装包 |

### 内容生产流水线（实现阶段强制）

```text
选题（搜索词 / 工单 / 文档缺口）
    │
    ▼
能力核对 ──▶ 产品 / 帮助文档 / 定价页 / 对比页 / 实际界面
    │           无能力 → 不写，或写入 ROADMAP（标明未交付）
    ▼
撰写（GitHub 口吻：How-to / 架构 / 集成）
    │
    ▼
互链官网 docs / product / community（UTM）
    │
    ▼
发布前 Checklist（见 §12）含「能力核对人」签字
```

### 权威事实源（写任何页之前对照）

| 来源 | 用途 |
|------|------|
| 官网产品页 `/product/*` | 模块边界与卖点 |
| 帮助文档 `/docs` | 真实操作步骤 |
| 定价页 `/price` | SaaS / 私有化 / 试用天数 |
| `/compare`、社区软文 | 选型话术，勿夸大 |
| Apollo / Galaxy 已交付功能 | 填报、报表、BI、大屏、ETL、Vera 等「能否写进 Example」 |
| 销售/实施口径 | 私有化、信创、OEM 边界 |

### 能力状态标注（建议在 docs / FAQ 统一）

| 标记 | 含义 |
|------|------|
| **已支持** | 当前 SaaS/私有化可演示或可交付 |
| **企业交付** | 有能力，细节/安装包不走公开仓 |
| **规划中** | 仅 ROADMAP / Release 预告，正文不写操作步骤 |
| **不提供** | Comparison 里如实写 ➖，勿回避 |

---

## 1. 目标与 KPI（12 个月）

不以 Star / Fork 为北极星；以**试用与询盘转化、开发者互动、可引用内容资产**为主（已吸收附录 A 审查意见）。

| 指标 | 当前（约） | 12 个月目标 | 说明 |
|------|------------|-------------|------|
| **试用注册（UTM=github）** | 很少 | 作为北极星跟踪 | `/register?utm_source=github` |
| **询盘 / 联系（UTM=github）** | 很少 | 作为北极星跟踪 | `/contact` 等同参 |
| GitHub Star | 0～低 | 1000+（过程指标） | 品牌信号，非成交终点 |
| Watch | 0～低 | 100+ | 关注 Release / Announcement |
| **Discussions（话题 + 有回复）** | 0 | 话题 120+；有效回复率 ≥70% | **替代 Fork KPI**（宣传仓无源码，Fork 无意义） |
| 实质长文（≥800 字、单一意图） | 低 | 40～80 篇 | FAQ / Example / AI / Comparison 等 |
| Google 收录（Hub 实质页） | 很少 | D90：25～40；年：随长文增长 | 不以目录节点凑数 |
| GEO 探针通过率 | 未测 | 季度抽测提升 | 固定 20 问（中英各 10），见附录 A |

**已拍板：取消 Fork 作为考核指标**，改用 Discussion 活跃度 + Watch。

---

## 2. 仓库治理（与「真正代码」分离）

### 2.1 主仓 `veryreport`（本仓）只负责

- 产品介绍与多语言 README  
- Release / Roadmap（产品级变更说明，非源码 tag）  
- 文档入口、Example 入口、Template 入口、AI 入口  
- FAQ / Comparison / Discussions / Wiki  

### 2.2 后续可选衍生仓（有真实资产后再建）

| 仓库 | 内容 | 前提 |
|------|------|------|
| `veryreport-ce` | 若未来有社区版/示例壳工程 | 法务与产品确认 |
| `sdk-java` / `sdk-vue` 等 | 对外 SDK | **当前决策：不公开**；仅当产品明确开放时再建 |
| `plugin-*` | 插件示例 | 插件规范公开 |

**现阶段原则：** 主仓**禁止**假 Docker / 假 Helm / 假「git clone 编译」；**不公开 API Spec / SDK**；所有「可运行」指向官网试用或交付包。

### 2.3 已完成基线（避免重复规划）

- [x] 多语言 README：`README.md` / `README.zh-CN.md` / `README.ja-JP.md`  
- [x] 商业软件声明、无源码说明  
- [x] 官网绝对路径截图与企业微信 / 电话  
- [x] 文档 / 社区 / 价格 / 试用正确链接  
- [x] **Phase 0（部分）：** UTM 规范、Discussions 值班模板、REPO_SETTINGS、官网互链代码；About/Topics/Discussions 开关待网页操作（见 `prd/进度-Phase0.md`）

---

## 3. 分阶段执行计划

### Phase 0 — 定位与仓库元数据（1～2 周）｜P0

| # | 事项 | 产出 | 验收 |
|---|------|------|------|
| 0.1 | 仓库 About / Description 改为 Developer Hub 话术 | About 文案 | 含 BI / Reporting / 官网链接 |
| 0.2 | 配置 **Topics**（15～20） | Topics 列表 | 见 §7 |
| 0.3 | 开启 **Discussions**（已安排专人周答） | 分类：FAQ / Q&A / Ideas / Announcements | 可发帖；周答人名单写入值班表 |
| 0.4 | 统一 UTM 与外链规范 | `docs/CONTRIBUTING-LINKS.md`（仅链接规范） | README 全链带 UTM 或约定路径 |
| 0.5 | 官网互链页（Galaxy） | 页脚 / 关于 / llms.txt 增加 GitHub | 双向可点 |
| 0.6 | 本 PRD 归档 | `prd/` | 即本文 |

**不做：** 假开源 LICENSE、假源码目录。

---

### Phase 1 — README 着陆页强化（2～4 周）｜P0

README = **Product Landing Page**，不是 How to build。

建议信息架构（三语同步）：

```text
Hero（是什么 + 商业声明 + CTA）
  → Screenshots
  → Features
  → Use Cases
  → Architecture（示意图，可 mermaid）
  → Quick Start（→ 官网试用，非 clone）
  → AI（Vera / MCP / 语义层摘要）
  → Examples / Templates 入口
  → FAQ 摘要 + 链到 FAQ.md
  → Community / Contact
```

| # | 事项 | 说明 |
|---|------|------|
| 1.1 | 按上述 IA 改版三语 README | 保留商业声明；增强 Architecture / Use Cases |
| 1.2 | Hero CTA：Trial / Docs / Contact / Pricing | 绝对 URL |
| 1.3 | 「Developer Hub」导航条 | 链到 `docs/` `examples/` `faq/` `ai/` |
| 1.4 | SEO 关键词自然覆盖检查 | 见 §6，禁堆砌 |
| 1.5 | 截图与 alt 文案规范 | 全部 `www.veryreport.com/images/...` |

---

### Phase 2 — Docs（开发者文档，非官网复制）（1～2 月）｜P0

路径建议：`docs/`

| 文档 | 内容边界 | 与官网 docs 关系 |
|------|----------|------------------|
| Architecture | 逻辑架构、语义层、报表/BI 引擎边界 | 官网偏操作；此处偏技术理解 |
| Deployment | SaaS vs 私有化概述；**安装细节走交付** | 不公开完整安装包脚本亦可 |
| Docker | 若无可公开镜像 → 写「交付提供」+ 试用替代 | **禁止虚构 docker pull** |
| API / 集成 | **仅概念级**：嵌入 / SSO / 企业集成能力说明 + 联系商务；**不贴 OpenAPI、不发布 SDK** | 已拍板：不公开 Spec/SDK |
| Plugin / Extension | 扩展点概念（若有） | 无公开 SDK 前保持概念级 |
| Best Practice | 数据集、权限、性能下推 | 可与社区软文互链 |
| FAQ 入口 | 链到 `FAQ.md` | — |

**原则：** GitHub docs ≠ 复制 `www.veryreport.com/docs`；侧重**开发者 / 架构 / 选型**。`docs/api` **不做**可调用规格文档。

---

### Phase 3 — Examples（流量核心）（持续，第 1 月启动）｜P0

路径建议：`examples/<domain>/`

```text
examples/
  mysql/  oracle/  postgresql/  clickhouse/
  sales/  erp/  crm/  mes/  finance/  inventory/
```

每个 Example 最小包：

| 文件 | 要求 |
|------|------|
| `README.md`（建议中英） | 场景、步骤、链到官网试用 |
| `*.sql` 或伪 SQL | 可复制、可被索引 |
| `screenshot.png` 或官网图 URL | 可见结果 |
| `meta.json`（可选） | 标题、关键词、数据源类型 |

**节奏：** 每周 ≥ 1 个 Example（见 §8）。

**GEO 价值：** 「How to connect Oracle / ClickHouse BI report」类长尾易被 AI 引用。

---

### Phase 4 — Templates（转化闭环）（第 2～3 月启动）｜P1

| 类型 | 内容 | 闭环 |
|------|------|------|
| Dashboard Template | 说明 + 预览图 + CTA | **必须登录官网后下载**（已拍板） |
| Report Template | 同上 | 同上 |
| ETL Template | 同上 | 同上 |

**注意：**

- Hub 上只放说明书 + 预览图 +「登录官网获取」按钮（UTM）。  
- `.vrpkg` 等包体**不进**公开 Git；走官网登录态下载。  
- 未登录不可拿到模板包。

每月：≥ 1 Dashboard + ≥ 1 Report Template 说明页（产能按附录 A 可降为「有存量再发」）。

---

### Phase 5 — AI 专区（GEO 重点）（与 Phase 2 并行）｜P0

路径建议：`ai/` 或 `docs/ai/`

覆盖主题（独立 md，便于收录）：

- AI BI / Chat BI / Natural Language Query  
- MCP / Tool Calling / RAG / Semantic Layer  
- 模型接入：OpenAI 兼容、Claude、Qwen、DeepSeek、本地模型  
- 审计与权限（AI 不绕过行级权限）  
- 与 Vera 产品页、帮助文档互链  

**目标检索式示例：** `AI BI Java`、`Chat BI MCP`、`semantic layer reporting`。

---

### Phase 6 — FAQ 规模化（持续）｜P0

- 根目录或 `faq/FAQ.md` + 可拆分 `faq/*.md`  
- **目标：100+ 问答**（中英至少各一版或双语同页）  
- 题型示例：How to connect Oracle / Docker deploy / build Dashboard / export PDF / private deployment / row-level security  

**节奏：** 每周 ≥ 1 FAQ（可批量攒稿按周发布）。  
与官网 FAQ、社区软文去重：GitHub 偏**技术 How-to**，官网偏**商务与产品**。

---

### Phase 7 — Comparison（客观对比）｜P1

- `comparison.md` 或 `docs/comparison/`  
- VeryReport vs Power BI / Tableau / FineBI·FineReport / Superset / Metabase  
- **客观、不攻击**；标明适用场景；链到官网 `/compare`  

与官网对比页分工：官网可视化选型；GitHub **可被爬取的长文对比表**。

---

### Phase 8 — Release / Roadmap / Wiki / Discussions

| 机制 | 优先级 | 做法 |
|------|--------|------|
| **Discussions** | **P0**（已安排专人周答） | FAQ / Q&A / Ideas / Announcements；优质回答回写 FAQ.md；周答人值班 |
| **Release** | P1 | **不要求与产品版本号一一对应**。按「对外可讲的能力/内容节点」发 What’s New（可合并多版产品改动，或纯 Hub 内容更新说明） |
| **Roadmap** | P1 | `ROADMAP.md`，季度更新 |
| **Wiki** | P1 | Architecture、Permission、Deployment 等长文 |

**Release 节奏：** 有实质对外信息再发，不为凑日历硬发；可与产品发版松耦合（例如一季一篇「Hub + 产品亮点」汇总）。

---

## 4. 与官网 / 社区 / 文档的双向闭环

```text
官网（产品·定价·案例·注册）
   ↕  UTM + 页脚「GitHub Developer Hub」
GitHub Hub（技术·Example·FAQ·AI·Comparison）
   ↕  「试用 / 文档 / 社区」CTA
产品社区（软文·案例）
   ↕  文末链 GitHub Example / FAQ
帮助文档（操作手册）
   ↕  「开发者架构与集成见 GitHub docs」
```

**转化路径统一：**

`GitHub 任意页 → /register?utm_source=github&utm_medium=readme&utm_campaign=...`  
或 `/contact` / `/price` 同等带参。

---

## 5. SEO / GEO 内容原则

1. **真实：** 无镜像、无 SDK、无 CE 则不写可执行假命令。  
2. **可引用：** 定义清晰、列表与表格、步骤编号、FAQ 问答对（利于 GEO）。  
3. **关键词自然覆盖：** 见 §6，禁止堆砌。  
4. **多语言：** EN 默认 README 服务全球检索；ZH/JA 服务区域；Example 优先中英。  
5. **外链权威：** Organization sameAs、官网、社区、文档互相引用（与 SEO 审计一致）。  

---

## 6. 关键词布局（自然写入，不堆砌）

**产品能力：** Business Intelligence, BI Platform, Reporting Tool / Software, Dashboard Software, Data Visualization, Analytics Platform, Enterprise Reporting / Dashboard, Data Integration, ETL, Data Entry  

**技术：** Java BI, Java Reporting, Spring Boot Reporting, Vue Dashboard, REST API, Embedded Analytics  

**AI：** AI BI, Chat BI, AI Analytics, Natural Language Query, MCP, Semantic Layer  

落点：README、docs、FAQ、Comparison、AI 专区、Example README。

---

## 7. GitHub Topics（建议 15～20）

```text
business-intelligence
dashboard
report
reporting
analytics
data-visualization
etl
java
spring-boot
vue3
mysql
oracle
chatbi
ai
mcp
bi-platform
data-entry
embedded-analytics
```

---

## 8. 运营节奏（内容日历）

| 周期 | 内容 | 负责人（建议） |
|------|------|----------------|
| 每周 | README 小更新（截图/链接/一句能力） | 增长 / 产品市场 |
| 每周 | 1 Example | 解决方案 / 实施 |
| 每周 | 1 FAQ | 支持 / 文档 |
| 每周 | 1 Best Practice（可短） | 架构 / 实施 |
| 每两周 | 1 Release Note | 产品 |
| 每月 | 1 Dashboard Template 说明 | 设计 / 实施 |
| 每月 | 1 Report Template 说明 | 实施 |
| 每季度 | 1 Demo 叙事页（链试用） | 市场 |

**工具：** Issues 作内容看板（label: `example` `faq` `docs` `ai`）；Discussions 作用户问题入口。

---

## 9. 优先级总览（RICE 简化）

| 优先级 | 工作包 | 原因 |
|--------|--------|------|
| **P0** | Topics、Discussions（有周答）、README IA、docs 骨架（无公开 API Spec）、AI 已交付说明、FAQ/Examples 启动、官网互链+UTM | SEO/GEO 与可信度立刻受益 |
| **P1** | Templates（登录官网下载）、Comparison、松耦合 Release Notes、Wiki | 流量与转化增强 |
| **P2** | 公开 Docker/Helm/SDK（仅当产品改口允许） | 当前不开放 |

---

## 10. 风险与对策

| 风险 | 对策 |
|------|------|
| 被误认为开源 | README / LICENSE 声明 / About 置顶「Commercial · No source」 |
| 虚构部署命令伤害信任 | 内容评审清单；禁止未经验证的 `docker pull` / `helm install` |
| 与官网 docs 重复稀释 SEO | GitHub = 开发者/架构/How-to；官网 = 产品手册；互相 canonical 式互链说明 |
| 无人持续更新 | 强制内容日历 + Issue 看板；未更新则不扩 Topics 承诺 |
| Star 注水无转化 | 以 UTM 注册数、询盘数为北极星，Star 为过程指标 |
| 竞品对比合规 | Comparison 客观表 + 链官网；法务抽检 |

---

## 11. 90 天里程碑（建议排期）

| 时间 | 里程碑 |
|------|--------|
| **D30** | Topics + Discussions 开启；README 三语 IA 改版；`docs/` 骨架（≥5 篇）；FAQ ≥20；Examples ≥4；官网互链+UTM |
| **D60** | AI 专区 ≥6 篇；FAQ ≥50；Examples ≥12；Comparison 初版；首次 GitHub Release Notes |
| **D90** | FAQ ≥80～100；Templates 说明 ≥4；Wiki 核心页上线；抽测 AI 引用；复盘引流与收录 |

---

## 12. 验收清单（每阶段通用）

- [ ] **能力已核对**：与产品页 / 帮助文档 / 实际界面一致；规划中能力已标「规划中」  
- [ ] **能力核对人**已确认（产品或实施，不可仅市场自审）  
- [ ] 无「可 clone 编译产品」表述  
- [ ] 所有 CTA 指向官网正确路径  
- [ ] 图片为官网绝对 URL 且 HTTP 200  
- [ ] 中/英（及日）关键页同步或明确「以 EN/ZH 为准」  
- [ ] 新 Example/FAQ 含可被摘录的步骤或问答对  
- [ ] 带 UTM 或统一中间跳转  
- [ ] 更新 `prd/` 进度备注（另开 `进度.md` 可选）  

---

## 13. 建议目录树（目标态，实现时再建）

```text
veryreport/
├── README.md                 # EN landing
├── README.zh-CN.md
├── README.ja-JP.md
├── ROADMAP.md
├── FAQ.md                    # 或 faq/
├── comparison.md             # 或 docs/comparison/
├── LICENSE / NOTICE          # 宣传材料版权声明（非开源许可）
├── docs/
│   ├── architecture.md
│   ├── deployment.md
│   ├── integration.md        # 嵌入/SSO 概念级；无 OpenAPI
│   ├── best-practices.md
│   └── ...                   # 不建可调用 api-spec / sdk 目录
├── examples/
│   ├── mysql/
│   ├── sales/
│   └── ...
├── templates/                # 仅说明 + 预览；下载 CTA → 官网登录
├── ai/
│   ├── chat-bi.md
│   ├── mcp.md                # 仅已交付部分；否则标规划中
│   └── semantic-layer.md
└── prd/
    └── 2026-07-28-github-developer-hub-seo-geo-plan.md  # 本文
```

---

## 14. 产品决策（已锁定 · 2026-07-28）

| # | 议题 | 决策 | 执行含义 |
|---|------|------|----------|
| D1 | GitHub Release 是否与产品版本号严格一一对应？ | **不需要** | Release 按对外叙事节点发，可汇总多版或仅 Hub 更新；不绑死版本号 |
| D2 | Template 下载是否必须登录官网？ | **是** | Hub 无包体；CTA → 官网登录后下载（带 UTM） |
| D3 | 是否公开 API Spec / SDK？ | **不公开** | `docs` 不做 OpenAPI/SDK；集成仅概念 + 商务咨询 |
| D4 | Discussions 是否安排专人周答？ | **安排** | Phase 0 开启 Discussions；建立周答值班；空转禁止 |
| D5 | Fork KPI 是否改为 Discussion / Watch？ | **是（规划侧判定）** | 宣传仓 Fork 无意义；考核 Discussion 活跃 + Watch；Star 仅过程指标 |

---

## 15. 总结

将 GitHub 纳入增长体系四件套：

1. **官网** — 品牌与销售  
2. **社区** — 内容与案例  
3. **帮助文档** — 产品知识  
4. **GitHub Developer Hub** — 开发者信任、技术传播、SEO / GEO  

四者互链、按日历持续更新，优于单点堆 Star 或单点改官网。

**下一步（仍属规划）：** §14 决策已锁定；按附录 A 修订 KPI/日历后，可开 Phase 0 实现任务。

---

## 附录 A — SEO / GEO / 营销专家审查（2026-07-28）

> 审查结论详见 Canvas：`github-hub-prd-seo-geo-review`。以下为须回写进执行的修订意见（**审查后、实现前**采纳）。

### A.1 总评

定位与真实性门禁正确；主要问题在 **KPI 可运营性、与官网内容蚕食、内容日历过载、GEO 缺少探针与摘要块**。建议完成本附录修订后再进入 Phase 0。

### A.2 必须修订

| # | 项 | 修订 |
|---|-----|------|
| R1 | KPI | **北极星**改为带 UTM 的试用注册数 + 询盘数；Star 为过程指标。Google「300+ 页」改为 **40～80 篇实质长文**（≥800 字、单一意图）；D90 收录目标 **25～40**。 |
| R2 | GEO 指标 | 「引用率显著提升」改为固定 **20 条探针问句**（中英各 10）季度抽测：是否提及 VeryReport、是否给出正确官网/Hub 链接、事实是否正确 → 记通过率。 |
| R3 | 内容日历 | 前 90 天：**每周 1 篇深内容**（Example 或 FAQ 二选一）+ 双周 README 微调；Release **有实质再发**（且不与产品版本强绑定，见 §14 D1）。 |
| R4 | 蚕食规则 | GitHub = 架构 / 选型 / 对比 / 集成边界 / 可引用 How-to 摘要；官网 `/docs` = 逐步点击操作。每篇 GitHub 文注明「操作细节以官网文档为准」并深链对应 docs。 |
| R5 | 中文意图 | §6 增补：复杂报表、报表工具、数据填报、私有化 BI、中国式报表、信创报表等；ZH 页优先覆盖。 |
| R6 | GEO 摘要块 | 每篇文首强制：**一句话定义 + 三条能力边界**；Comparison 每竞品「更适合 / 不适合」各一句。 |
| R7 | AI 专区 | P0 仅写 Vera **已交付**；MCP/RAG/Agent 无 GA 则标规划中，不写操作教程。文结构：定义 → 已支持 → 不支持/规划 → 安全 → CTA。 |
| R8 | Discussions | **已安排周答 → Phase 0 开启**；无值班则禁止开启。 |
| R9 | 对外命名 | 对外统一 **Developer Hub**；「第二官网」仅作对内比喻。 |
| R10 | CTA 分轨 | 开发者 → 试用 / Example / 架构；采购 → 价格 / 联系 / 案例（官网）。 |

### A.3 应保留（勿改掉）

- 商业软件 + 无源码声明  
- §0.5 真实性门禁与能力状态标注  
- 四件套分工与 UTM 闭环  
- Examples + FAQ 作为主引擎  
- 禁止虚构 Docker/SDK；Comparison 客观不攻击  

### A.4 Phase 微调

- Phase 0：About、Topics、互链、UTM、**Discussions（有周答）**。  
- AI 深文随交付升级，不与「概念词堆砌」绑死在 P0。  
- API/SDK：**不公开**（§14 D3），docs 不建设可调用规格。
