-- VeryReport Developer Hub — Finance budget vs actual (MySQL)
-- See: examples/finance/README.md

CREATE DATABASE IF NOT EXISTS vr_demo DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE vr_demo;

DROP TABLE IF EXISTS vr_fin_budget;
CREATE TABLE vr_fin_budget (
  id            BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  fiscal_year   INT             NOT NULL,
  cost_center   VARCHAR(64)     NOT NULL,
  budget_amt    DECIMAL(18, 2)  NOT NULL,
  remark        VARCHAR(255)             DEFAULT NULL,
  updated_at    TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY uk_fin_budget (fiscal_year, cost_center)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO vr_fin_budget (fiscal_year, cost_center, budget_amt, remark) VALUES
  (2026, 'CC-华东销售', 500000.00, '年初预算'),
  (2026, 'CC-华南销售', 420000.00, '年初预算'),
  (2026, 'CC-华北销售', 380000.00, '年初预算'),
  (2026, 'CC-研发中心', 900000.00, '年初预算'),
  (2026, 'CC-市场品牌', 260000.00, '年初预算'),
  (2026, 'CC-管理总部', 180000.00, '年初预算');

DROP TABLE IF EXISTS vr_fin_actual;
CREATE TABLE vr_fin_actual (
  id            BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  fiscal_year   INT             NOT NULL,
  biz_date      DATE            NOT NULL,
  cost_center   VARCHAR(64)     NOT NULL,
  actual_amt    DECIMAL(18, 2)  NOT NULL,
  PRIMARY KEY (id),
  KEY idx_fin_actual (fiscal_year, cost_center, biz_date)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO vr_fin_actual (fiscal_year, biz_date, cost_center, actual_amt) VALUES
  (2026, '2026-01-10', 'CC-华东销售', 42000.00),
  (2026, '2026-01-20', 'CC-华东销售', 38500.00),
  (2026, '2026-02-05', 'CC-华东销售', 41000.00),
  (2026, '2026-01-12', 'CC-华南销售', 35000.00),
  (2026, '2026-02-08', 'CC-华南销售', 36000.00),
  (2026, '2026-01-15', 'CC-华北销售', 28000.00),
  (2026, '2026-02-12', 'CC-华北销售', 29500.00),
  (2026, '2026-01-18', 'CC-研发中心', 72000.00),
  (2026, '2026-02-15', 'CC-研发中心', 68000.00),
  (2026, '2026-01-22', 'CC-市场品牌', 22000.00),
  (2026, '2026-02-18', 'CC-市场品牌', 24500.00),
  (2026, '2026-01-25', 'CC-管理总部', 15000.00),
  (2026, '2026-02-20', 'CC-管理总部', 14800.00);
