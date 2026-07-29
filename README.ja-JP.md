<p align="center">
  <a href="https://www.veryreport.com/?utm_source=github&utm_medium=readme&utm_campaign=developer_hub">
    <img src="https://www.veryreport.com/images/logo.png" alt="VeryReport" width="360" />
  </a>
</p>

<h1 align="center">VeryReport（非常报表）</h1>

<p align="center">
  <strong>エンタープライズ向けレポート＆BI · Developer Hub</strong><br />
  複雑レポート · セルフサービス BI · データ入力 · ETL · 大画面 · Vera AI
</p>

<p align="center">
  <a href="https://www.veryreport.com/register?utm_source=github&utm_medium=readme&utm_campaign=developer_hub"><strong>無料トライアル</strong></a> ·
  <a href="https://www.veryreport.com/price?utm_source=github&utm_medium=readme&utm_campaign=developer_hub">価格</a> ·
  <a href="https://www.veryreport.com/docs?utm_source=github&utm_medium=readme&utm_campaign=developer_hub">ヘルプ</a> ·
  <a href="https://www.veryreport.com/contact?utm_source=github&utm_medium=readme&utm_campaign=developer_hub">お問い合わせ</a> ·
  <a href="https://www.veryreport.com/?utm_source=github&utm_medium=readme&utm_campaign=developer_hub">公式サイト</a>
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
  <strong>言語</strong> ·
  <a href="./README.md">English</a> ·
  <a href="./README.zh-CN.md">中文</a> ·
  <strong>日本語（現在）</strong>
</p>

---

> **定義：** VeryReport は中国企業向けの**商用**レポート＆BI プラットフォームです（中国式複雑レポート、入力、ETL、大画面、Vera AI）。  
> **境界：** ① 本リポジトリに**ソースなし／非 OSS** ② **公開しない** API Spec / SDK ③ 操作手順は[公式ヘルプ](https://www.veryreport.com/docs?utm_source=github&utm_medium=readme&utm_campaign=developer_hub)が正。

---

## スクリーンショット

### 複雑レポートデザイナ

![デザイナ](https://www.veryreport.com/images/product/report-designer-panel.png)

### BI · 入力 · ETL · 大画面 · Vera

<p>
<img src="https://www.veryreport.com/images/product/bi-dashboard-built.png" alt="BI" width="19%" />
<img src="https://www.veryreport.com/images/product/form-designer-panel.png" alt="入力" width="19%" />
<img src="https://www.veryreport.com/images/product/etl-designer-panel.png" alt="ETL" width="19%" />
<img src="https://www.veryreport.com/images/product/screen-designer-panel.png" alt="大画面" width="19%" />
<img src="https://www.veryreport.com/images/product/vera-feature-ask.png" alt="Vera" width="19%" />
</p>

---

## 機能概要

| モジュール | ポイント |
|---|---|
| **複雑レポート** | Excel 風、グループ/クロス、帳票印刷、Word/Excel/PDF、セル入力・書き戻し |
| **セルフサービス BI** | D&D、ドリルダウン、KPI |
| **データ入力** | フォーム（タスク/承認）とレポート格子訂正 |
| **ETL / 大画面 / Vera AI** | 可視化加工、大画面、自然言語問数・構築 |
| **権限・連携** | ロール；SSO/埋め込みは企業納品 |

---

## ユースケース

正式レポート、経営ダッシュボード、格子訂正/予算入力、ETL、Vera 問数、SaaS 検証→オンプレミス（¥10,000〜）。

**不向き：** 個人 CSV のみ、本リポジトリを OSS エンジンとみなす、DWH 計算エンジンの代替。

---

## アーキテクチャ（論理）

```text
Sources ──▶ Datasets ──▶ Reports / BI / Forms / Screens / Vera AI
                ▲
                └── ETL（任意）
Deploy: SaaS または オンプレミス
```

---

## クイックスタート

本リポジトリから製品をビルド**できません**。[https://www.veryreport.com/register?utm_source=github&utm_medium=readme&utm_campaign=developer_hub](https://www.veryreport.com/register?utm_source=github&utm_medium=readme&utm_campaign=developer_hub) でトライアルしてください。

---

## Vera AI · Examples · Templates · FAQ

- [`ai/README.md`](./ai/README.md) — 出荷済み能力のみ  
- [`examples/`](./examples/README.md) · [`templates/`](./templates/README.md)（**ログイン必須**でダウンロード）  
- [`FAQ.md`](./FAQ.md)

---

## 購入

SaaS / 約30日トライアル / オンプレミス ¥10,000〜。機能は SaaS とオンプレで同一。**非オープンソース。**

[https://www.veryreport.com/price?utm_source=github&utm_medium=readme&utm_campaign=developer_hub](https://www.veryreport.com/price?utm_source=github&utm_medium=readme&utm_campaign=developer_hub) · [https://www.veryreport.com/contact?utm_source=github&utm_medium=readme&utm_campaign=developer_hub](https://www.veryreport.com/contact?utm_source=github&utm_medium=readme&utm_campaign=developer_hub)

---

## 連絡先

sales@veryreport.com · 021-64311015 · 13671686940  

<p align="center">
  <img src="https://www.veryreport.com/images/weCom.png" alt="WeCom" width="180" />
</p>

[`NOTICE`](./NOTICE) · Star は関心の表明であり、ソース入手権ではありません。
