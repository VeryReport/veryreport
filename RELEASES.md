# Releases（Hub 发布说明）

> **一句话定义：** 记录 Developer Hub **对外可讲**的内容节点；可与产品发版松耦合。  
> **边界：** ① **不要求** Release 标签与产品版本号 1:1 ② 无实质信息不硬发 ③ 本文件可先于 GitHub Releases UI 存在；打 Tag 时正文可复制本节。

UTM 规范：[`docs/link-utm.md`](./docs/link-utm.md)（`utm_medium=release`）

---

## 如何发 GitHub Release（人工）

1. 确认有实质更新（新 Example / FAQ 批次 / 重大边界澄清等）。  
2. Tag 建议：`hub-YYYY.MM.DD` 或 `hub-2026-Q3`（**不要**冒充产品版本号）。  
3. 标题示例：`Developer Hub notes — 2026-07-29`  
4. 正文开头声明：*This repository is a commercial product Developer Hub, not open-source source code.*  
5. CTA 带 UTM：试用 / 文档 / 联系。

---

## Hub notes — 2026-07-29

**主题：** Developer Hub 首轮内容齐套（Phase 0～8 规划项落地）。

### 新增与强化

- 三语 README 着陆页（试用 CTA + Architecture + Use Cases）  
- `docs/`：架构、部署、集成、最佳实践、客观对比  
- `examples/`：MySQL、PostgreSQL、Oracle、ClickHouse、MySQL 格子填报  
- `ai/`：Chat BI、语义层与权限、模型接入、MCP 边界说明  
- `faq/`：约 100 条技术 FAQ  
- `templates/`：Dashboard / Report / ETL **说明页**（包体须登录官网下载）  
- `ROADMAP.md` · 本 Releases 说明 · Discussions 指引  

### 重要边界（再次强调）

- **不开源**；无公开 Docker pull；无 API Spec / SDK  
- 模板与私有化安装包**不在**本仓分发  

### CTA

- Trial: https://www.veryreport.com/register?utm_source=github&utm_medium=release&utm_campaign=developer_hub  
- Docs: https://www.veryreport.com/docs?utm_source=github&utm_medium=release&utm_campaign=developer_hub  
- Contact: https://www.veryreport.com/contact?utm_source=github&utm_medium=release&utm_campaign=developer_hub  

---

## 历史

| 日期 | 说明 |
|------|------|
| 2026-07-29 | 首篇 Hub notes（上表） |
| 2026-07-29 | 追加行业 Example：`examples/sales` · `examples/finance`；运营检查清单 |
| 2026-07-29 | 追加行业 Example：`examples/inventory` · `examples/erp` |
