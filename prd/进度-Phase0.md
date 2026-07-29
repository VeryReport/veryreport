# Phase 0 进度

> 更新日期：2026-07-28

| # | 事项 | 状态 | 备注 |
|---|------|------|------|
| 0.1 | About / Description | ⏳ 待在 GitHub 网页或 `gh` 应用 | 文案见 `.github/REPO_SETTINGS.md`（本机无 `gh`） |
| 0.2 | Topics | ⏳ 同上 | 18 个 Topics 已列在 REPO_SETTINGS |
| 0.3 | Discussions + 周答 | 🟡 文档已就绪 | 需网页开启 Discussions；值班姓名填 `docs/discussions-duty.md` |
| 0.4 | UTM / 外链规范 | ✅ | `docs/link-utm.md`；三语 README CTA 已带 UTM |
| 0.5 | 官网互链 | ✅ 代码已改 | 页脚、`llms.txt`、Organization `sameAs` → 需部署 Galaxy FE |
| 0.6 | PRD 归档 | ✅ | `prd/` |

## 本仓新增文件

- `NOTICE`
- `.github/REPO_SETTINGS.md`
- `docs/README.md` · `docs/link-utm.md` · `docs/discussions-duty.md`

## 官网（Galaxy）改动

- `AppFooter.vue`：资源列增加 GitHub Developer Hub（外链）
- `public/llms.txt`：增加 Hub 说明
- `seoEntities.ts`：`sameAs` 增加 `https://github.com/VeryReport/veryreport`

## 人工收尾（请立即做）

1. 打开 https://github.com/VeryReport/veryreport/settings → 按 `REPO_SETTINGS.md` 填 About、Topics、启用 Discussions  
2. 填写 `docs/discussions-duty.md` 值班姓名  
3. 部署 Galaxy 前端使页脚 / llms / sameAs 生效（本仓推送按产品节奏，勿默认 push）  

Phase 1 见 [进度-Phase1.md](./进度-Phase1.md)。
