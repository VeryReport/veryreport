-- VeryReport Developer Hub — Sales ops demo (MySQL)
-- See: examples/sales/README.md

CREATE DATABASE IF NOT EXISTS vr_demo DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE vr_demo;

DROP TABLE IF EXISTS vr_sales_fact;
CREATE TABLE vr_sales_fact (
  id             BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  biz_date       DATE            NOT NULL,
  region         VARCHAR(32)     NOT NULL,
  product_line   VARCHAR(64)     NOT NULL,
  customer_type  VARCHAR(32)     NOT NULL,
  amount         DECIMAL(18, 2)  NOT NULL,
  target_amt     DECIMAL(18, 2)  NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  KEY idx_sales_date (biz_date),
  KEY idx_sales_region (region, product_line)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO vr_sales_fact (biz_date, region, product_line, customer_type, amount, target_amt) VALUES
  ('2026-01-05', '华东', '标准版', '企业', 12800.00, 15000.00),
  ('2026-01-08', '华东', '专业版', '企业', 25600.00, 24000.00),
  ('2026-01-12', '华南', '标准版', '渠道',  9600.00, 10000.00),
  ('2026-01-15', '华南', '专业版', '企业', 38400.00, 36000.00),
  ('2026-01-18', '华北', '标准版', '企业', 11200.00, 12000.00),
  ('2026-01-22', '华北', '旗舰版', '企业', 52000.00, 50000.00),
  ('2026-02-03', '华东', '旗舰版', '企业', 48000.00, 45000.00),
  ('2026-02-07', '西南', '标准版', '渠道',  7800.00,  8000.00),
  ('2026-02-11', '西南', '专业版', '企业', 19200.00, 20000.00),
  ('2026-02-14', '华东', '标准版', '渠道', 14400.00, 15000.00),
  ('2026-02-18', '华南', '旗舰版', '企业', 56000.00, 55000.00),
  ('2026-02-21', '华北', '专业版', '渠道', 22400.00, 22000.00),
  ('2026-02-25', '华东', '专业版', '企业', 28800.00, 26000.00),
  ('2026-02-28', '华南', '标准版', '企业', 13200.00, 14000.00);

DROP TABLE IF EXISTS vr_sales_target;
CREATE TABLE vr_sales_target (
  fiscal_month  CHAR(7)         NOT NULL COMMENT 'YYYY-MM',
  region        VARCHAR(32)     NOT NULL,
  target_amt    DECIMAL(18, 2)  NOT NULL,
  PRIMARY KEY (fiscal_month, region)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO vr_sales_target (fiscal_month, region, target_amt) VALUES
  ('2026-01', '华东', 120000.00),
  ('2026-01', '华南', 100000.00),
  ('2026-01', '华北',  90000.00),
  ('2026-01', '西南',  50000.00),
  ('2026-02', '华东', 130000.00),
  ('2026-02', '华南', 110000.00),
  ('2026-02', '华北',  95000.00),
  ('2026-02', '西南',  55000.00);
