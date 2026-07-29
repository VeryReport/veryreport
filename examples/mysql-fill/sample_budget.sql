-- VeryReport Developer Hub — MySQL table for complex-report cell fill / write-back
-- See: examples/mysql-fill/README.md

CREATE DATABASE IF NOT EXISTS vr_demo DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE vr_demo;

DROP TABLE IF EXISTS vr_demo_budget;
CREATE TABLE vr_demo_budget (
  id            BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  fiscal_year   INT             NOT NULL COMMENT '财年',
  cost_center   VARCHAR(64)     NOT NULL COMMENT '成本中心',
  budget_amt    DECIMAL(18, 2)  NOT NULL COMMENT '预算金额（可填报写回）',
  remark        VARCHAR(255)             DEFAULT NULL,
  updated_at    TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY uk_year_cc (fiscal_year, cost_center)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='格子填报演示预算表';

INSERT INTO vr_demo_budget (fiscal_year, cost_center, budget_amt, remark) VALUES
  (2026, 'CC-华东销售', 500000.00, '初始预算'),
  (2026, 'CC-华南销售', 420000.00, '初始预算'),
  (2026, 'CC-华北销售', 380000.00, '初始预算'),
  (2026, 'CC-研发中心', 900000.00, '初始预算'),
  (2026, 'CC-市场品牌', 260000.00, '初始预算');
