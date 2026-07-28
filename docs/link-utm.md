# 外链与 UTM 规范

凡从本 Developer Hub 链向官网的**转化类链接**，统一带 UTM，便于衡量 GitHub 引流。

## 参数约定

| 参数 | 取值 | 说明 |
|------|------|------|
| `utm_source` | `github` | 固定 |
| `utm_medium` | 见下表 | 触点 |
| `utm_campaign` | `developer_hub` | 固定本仓战役名 |
| `utm_content` | 可选 | 区分按钮，如 `hero_trial` / `footer_contact` |

### utm_medium

| medium | 使用场景 |
|--------|----------|
| `readme` | 根 README 三语 |
| `docs` | `docs/` 内文档 |
| `example` | `examples/` |
| `faq` | FAQ |
| `ai` | `ai/` 专区 |
| `template` | 模板说明页 CTA |
| `discussion` | Discussions 回复中的官网链 |
| `about` | 仓库 About Website 字段 |
| `release` | GitHub Release 正文 |

## 标准 CTA 模板

```text
试用:   https://www.veryreport.com/register?utm_source=github&utm_medium=readme&utm_campaign=developer_hub
定价:   https://www.veryreport.com/price?utm_source=github&utm_medium=readme&utm_campaign=developer_hub
联系:   https://www.veryreport.com/contact?utm_source=github&utm_medium=readme&utm_campaign=developer_hub
文档:   https://www.veryreport.com/docs?utm_source=github&utm_medium=docs&utm_campaign=developer_hub
社区:   https://www.veryreport.com/community?utm_source=github&utm_medium=docs&utm_campaign=developer_hub
```

模板下载（必须登录）：链到官网模板/市场入口时使用 `utm_medium=template`。

## 不要做的事

- 不要给图片 CDN、纯锚点加 UTM  
- 不要用缩短链隐藏官网域名  
- 不要在同一页混用无 UTM 与有 UTM 的试用按钮（转化链必须带参）
