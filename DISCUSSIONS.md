# Discussions 使用指南（Developer Hub）

> **一句话定义：** Discussions 用于公告、问答与想法收集；**不是**产品源码 Issue Tracker。  
> 值班制度：[`docs/discussions-duty.md`](./docs/discussions-duty.md) · 仓库设置：[`.github/REPO_SETTINGS.md`](./.github/REPO_SETTINGS.md)

---

## 启用前检查（人工）

1. GitHub Settings → Features → **Enable Discussions**  
2. 建议分类：`Announcements` · `Q&A` · `Ideas` · `FAQ`  
3. 在 `docs/discussions-duty.md` 填写值班姓名  
4. 置顶一篇「请先读：本仓非开源」指向 [`FAQ.md`](./FAQ.md) / [`NOTICE`](./NOTICE)

---

## 发帖建议

| 分类 | 适合 | 不适合 |
|------|------|--------|
| Announcements | Hub 更新、Release notes 摘要 | 广告外链堆砌 |
| Q&A | 连接数据源、报表/BI 选型、边界澄清 | 索要安装包 / 许可证密钥 |
| Ideas | Hub 文档选题、Example 需求 | 无上下文的「要开源」 |
| FAQ | 可沉淀进 `faq/` 的问答 | 一次性私密商务条款 |

回答时官网链接请带 UTM：`utm_medium=discussion`（见 [`docs/link-utm.md`](./docs/link-utm.md)）。

---

## 回复话术要点

1. 先澄清：本仓无源码、无公开 Docker、无 SDK。  
2. 能试用解决的 → 给 [register](https://www.veryreport.com/register?utm_source=github&utm_medium=discussion&utm_campaign=developer_hub) + 对应 Example/FAQ。  
3. 私有化 / 集成 / 报价 → [contact](https://www.veryreport.com/contact?utm_source=github&utm_medium=discussion&utm_campaign=developer_hub)。  
4. 优质问答 → 回写 `faq/*.md`。

---

## 与 Issues 的分工

| 渠道 | 用途 |
|------|------|
| Discussions | 默认问答与想法 |
| Issues | 可选：Hub 文档勘误看板（非产品缺陷工单） |
| 商务/社区 | 产品缺陷、合同、交付 |

产品社区：https://www.veryreport.com/community?utm_source=github&utm_medium=discussion&utm_campaign=developer_hub
