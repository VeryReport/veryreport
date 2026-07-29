<p align="center">
  <a href="https://www.veryreport.com/?utm_source=github&utm_medium=readme&utm_campaign=developer_hub">
    <img src="https://www.veryreport.com/images/logo.png" alt="VeryReport" width="360" />
  </a>
</p>

<h1 align="center">VeryReport</h1>

<p align="center">
  <strong>Enterprise reporting &amp; BI analytics · Developer Hub</strong><br />
  Complex reports · Self-service BI · Data entry · ETL · Data screens · Vera AI
</p>

<p align="center">
  <a href="https://www.veryreport.com/register?utm_source=github&utm_medium=readme&utm_campaign=developer_hub"><strong>Free trial</strong></a> ·
  <a href="https://www.veryreport.com/price?utm_source=github&utm_medium=readme&utm_campaign=developer_hub">Pricing</a> ·
  <a href="https://www.veryreport.com/docs?utm_source=github&utm_medium=readme&utm_campaign=developer_hub">Docs</a> ·
  <a href="https://www.veryreport.com/contact?utm_source=github&utm_medium=readme&utm_campaign=developer_hub">Contact</a> ·
  <a href="https://www.veryreport.com/?utm_source=github&utm_medium=readme&utm_campaign=developer_hub">Website</a>
</p>

<p align="center">
  <strong>Hub</strong> ·
  <a href="./docs/README.md">Docs</a> ·
  <a href="./FAQ.md">FAQ</a> ·
  <a href="./examples/README.md">Examples</a> ·
  <a href="./ai/README.md">AI</a> ·
  <a href="./templates/README.md">Templates</a> ·
  <a href="./ROADMAP.md">Roadmap</a> ·
  <a href="./RELEASES.md">Releases</a> ·
  <a href="./DISCUSSIONS.md">Discussions</a>
</p>

<p align="center">
  <strong>Language</strong> ·
  <strong>English (current)</strong> ·
  <a href="./README.zh-CN.md">中文</a> ·
  <a href="./README.ja-JP.md">日本語</a>
</p>

---

> **One-liner:** VeryReport is a **commercial** enterprise reporting & BI platform (Chinese-style complex reports, fill, ETL, screens, Vera AI).  
> **Boundaries:** ① **No source code / not open source** in this repo ② **No public** API Spec / SDK ③ Step-by-step UI flows live on the [official docs](https://www.veryreport.com/docs?utm_source=github&utm_medium=readme&utm_campaign=developer_hub).

---

## Screenshots

### Complex report designer

![Report designer](https://www.veryreport.com/images/product/report-designer-panel.png)

### Self-service BI

![BI](https://www.veryreport.com/images/product/bi-dashboard-built.png)

### Data entry · ETL · Screen · Vera

<p>
<img src="https://www.veryreport.com/images/product/form-designer-panel.png" alt="Data entry" width="24%" />
<img src="https://www.veryreport.com/images/product/etl-designer-panel.png" alt="ETL" width="24%" />
<img src="https://www.veryreport.com/images/product/screen-designer-panel.png" alt="Screen" width="24%" />
<img src="https://www.veryreport.com/images/product/vera-feature-ask.png" alt="Vera AI" width="24%" />
</p>

More UI: [https://www.veryreport.com/?utm_source=github&utm_medium=readme&utm_campaign=developer_hub](https://www.veryreport.com/?utm_source=github&utm_medium=readme&utm_campaign=developer_hub)

---

## Features

| Module | Highlights |
|---|---|
| **Complex reports** | Excel-like designer; grouping/cross-tabs/parameters; form printing; Word/Excel/PDF; cell fill & write-back |
| **Self-service BI** | Drag-and-drop, drill-down, KPI, ad-hoc extract |
| **Data entry** | Forms with tasks/approval; report-grid corrections & Excel import to DB |
| **ETL** | Visual cleansing, multi-source, scheduling |
| **Data screens** | Drag-and-drop, multi-resolution, refresh & share |
| **Vera AI** | Ask / interpret / report / build dashboards; explainable SQL; private/local LLMs |
| **Security & integration** | Roles & resources; SSO/embed via enterprise delivery |

Pages: [Report](https://www.veryreport.com/product/report?utm_source=github&utm_medium=readme&utm_campaign=developer_hub) · [BI](https://www.veryreport.com/product/bi?utm_source=github&utm_medium=readme&utm_campaign=developer_hub) · [Form](https://www.veryreport.com/product/form?utm_source=github&utm_medium=readme&utm_campaign=developer_hub) · [ETL](https://www.veryreport.com/product/etl?utm_source=github&utm_medium=readme&utm_campaign=developer_hub) · [Screen](https://www.veryreport.com/product/screen?utm_source=github&utm_medium=readme&utm_campaign=developer_hub) · [Vera](https://www.veryreport.com/product/ai?utm_source=github&utm_medium=readme&utm_campaign=developer_hub) · [Compare](https://www.veryreport.com/compare?utm_source=github&utm_medium=readme&utm_campaign=developer_hub)

---

## Use cases

| Case | Notes |
|---|---|
| Formal / Chinese-style reports | Multi-level headers, cross-tabs, print, export |
| Ops dashboards | Self-service BI + screens |
| Cell corrections / budgets | Report fill write-back or form workflows |
| Data prep | ETL into shared datasets for reports & BI |
| NL analytics | Vera ask & dashboard draft |
| SaaS → on-premises | Trial first, then private deploy (see pricing) |

**Not a fit:** personal CSV-only work; treating this repo as an OSS engine; replacing your warehouse compute engine.

---

## Architecture (logical)

```text
                    ┌─ Complex report engine (layout / export / fill)
Sources ──▶ Datasets ─┼─ Self-service BI / screens
           ▲          ├─ Form fill (tasks / approval)
           │          └─ Vera AI (ask · build · …)
           └── ETL (optional)

Deploy: SaaS subscription  or  On-premises (intranet)
```

Queries push down to your databases. Permissions also apply to AI ask.

Developer-oriented notes: [`docs/`](./docs/README.md) (not a mirror of the product manual).

---

## Quick start (cloud trial)

You **cannot** build the product from this repo.

1. [https://www.veryreport.com/register?utm_source=github&utm_medium=readme&utm_campaign=developer_hub](https://www.veryreport.com/register?utm_source=github&utm_medium=readme&utm_campaign=developer_hub) — ~30-day full-feature trial (see website)  
2. Connect a source (e.g. MySQL)  
3. Follow [https://www.veryreport.com/docs?utm_source=github&utm_medium=readme&utm_campaign=developer_hub](https://www.veryreport.com/docs?utm_source=github&utm_medium=readme&utm_campaign=developer_hub): datasets → reports / dashboards / fill  

On-premises packages: **not** distributed here — [https://www.veryreport.com/contact?utm_source=github&utm_medium=readme&utm_campaign=developer_hub](https://www.veryreport.com/contact?utm_source=github&utm_medium=readme&utm_campaign=developer_hub).

---

## Vera AI

Shipped: NL **ask**, **interpret**, **report**, **build** dashboard drafts; explainable process/SQL; private/local LLMs.  

See [`ai/README.md`](./ai/README.md) · [Product](https://www.veryreport.com/product/ai?utm_source=github&utm_medium=readme&utm_campaign=developer_hub).

---

## Examples · Templates · FAQ

| Link | Notes |
|---|---|
| [`examples/`](./examples/README.md) | Scenario examples (weekly deep posts) |
| [`templates/`](./templates/README.md) | Specs/previews; **login required** to download packages |
| [`FAQ.md`](./FAQ.md) | Extended Q&A |

Compare: [https://www.veryreport.com/compare?utm_source=github&utm_medium=readme&utm_campaign=developer_hub](https://www.veryreport.com/compare?utm_source=github&utm_medium=readme&utm_campaign=developer_hub)

---

## Licensing & purchase

| Option | Notes |
|---|---|
| SaaS | See live pricing on the website · [https://www.veryreport.com/price?utm_source=github&utm_medium=readme&utm_campaign=developer_hub](https://www.veryreport.com/price?utm_source=github&utm_medium=readme&utm_campaign=developer_hub) |
| Trial | ~30 days · [https://www.veryreport.com/register?utm_source=github&utm_medium=readme&utm_campaign=developer_hub](https://www.veryreport.com/register?utm_source=github&utm_medium=readme&utm_campaign=developer_hub) |
| On-premises | On-premises licensing (see pricing / contact) · [https://www.veryreport.com/contact?utm_source=github&utm_medium=readme&utm_campaign=developer_hub](https://www.veryreport.com/contact?utm_source=github&utm_medium=readme&utm_campaign=developer_hub) |

Same feature set on SaaS and on-premises. **Not open source.**

---

## FAQ (short)

Full list: [`FAQ.md`](./FAQ.md).

**Open source?** No.  
**Private deploy?** Yes.  
**Public Docker/SDK?** Not in this public hub.  
**Docs?** https://www.veryreport.com/docs?utm_source=github&utm_medium=readme&utm_campaign=developer_hub

---

## Community & contact

| Channel | Details |
|---|---|
| Community | [https://www.veryreport.com/community?utm_source=github&utm_medium=readme&utm_campaign=developer_hub](https://www.veryreport.com/community?utm_source=github&utm_medium=readme&utm_campaign=developer_hub) |
| Sales | sales@veryreport.com |
| Phone | 021-64311015 |

<p align="center">
  <img src="https://www.veryreport.com/images/weCom.png" alt="WeCom QR" width="180" />
</p>

---

## About this repository

| | |
|---|---|
| Role | **VeryReport Developer Hub** (developer marketing / SEO·GEO), not a source repo |
| Notice | Copyright promotional materials — see [`NOTICE`](./NOTICE); **not** an OSS license |
| LLM brief | [`llms.txt`](./llms.txt) · contributing boundaries: [`CONTRIBUTING.md`](./CONTRIBUTING.md) |

A Star shows interest; **it does not grant source access**.

[https://www.veryreport.com/?utm_source=github&utm_medium=readme&utm_campaign=developer_hub](https://www.veryreport.com/?utm_source=github&utm_medium=readme&utm_campaign=developer_hub) · [https://www.veryreport.com/docs?utm_source=github&utm_medium=readme&utm_campaign=developer_hub](https://www.veryreport.com/docs?utm_source=github&utm_medium=readme&utm_campaign=developer_hub) · [https://www.veryreport.com/register?utm_source=github&utm_medium=readme&utm_campaign=developer_hub](https://www.veryreport.com/register?utm_source=github&utm_medium=readme&utm_campaign=developer_hub)
