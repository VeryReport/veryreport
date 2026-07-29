# Phase 2 进度

> 更新日期：2026-07-29

| # | 事项 | 状态 | 备注 |
|---|------|------|------|
| 2.1 | Architecture | ✅ | `docs/architecture.md` 逻辑视图 + 模块边界 |
| 2.2 | Deployment | ✅ | SaaS / 私有化；明确无公开 Docker pull |
| 2.3 | Integration | ✅ | 嵌入/SSO 概念级；禁 Spec/SDK |
| 2.4 | Plugin / Extension | ✅ | 并入 integration「扩展点」：无公开 SDK |
| 2.5 | Best Practice | ✅ | `docs/best-practices.md` |
| 2.6 | Docs 索引 + FAQ 入口 | ✅ | `docs/README.md` → FAQ |

## 原则核对

- GitHub docs ≠ 官网操作手册镜像  
- 无虚构 `docker pull`  
- 无 OpenAPI / SDK  

## 下一阶段（Phase 3）

按 PRD：开始 `examples/<domain>/` 每周约 1 篇深内容（Example **或** FAQ 二选一亦可）；首批建议 MySQL / 复杂报表或填报场景。
