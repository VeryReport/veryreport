-- VeryReport Developer Hub — MySQL demo for complex reports
-- Safe to run on a dedicated demo schema. Adjust database name as needed.
-- See: examples/mysql/README.md

CREATE DATABASE IF NOT EXISTS vr_demo DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE vr_demo;

DROP TABLE IF EXISTS vr_demo_sales;
CREATE TABLE vr_demo_sales (
  id            BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  biz_date      DATE            NOT NULL COMMENT '业务日期',
  region        VARCHAR(32)     NOT NULL COMMENT '大区',
  product_line  VARCHAR(64)     NOT NULL COMMENT '产品线',
  amount        DECIMAL(18, 2)  NOT NULL COMMENT '销售额',
  qty           INT             NOT NULL COMMENT '数量',
  PRIMARY KEY (id),
  KEY idx_biz_date (biz_date),
  KEY idx_region_pline (region, product_line)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='VeryReport Hub 演示销售明细';

INSERT INTO vr_demo_sales (biz_date, region, product_line, amount, qty) VALUES
  ('2026-01-05', '华东', '标准版', 12800.00, 4),
  ('2026-01-08', '华东', '专业版', 25600.00, 2),
  ('2026-01-12', '华南', '标准版',  9600.00, 3),
  ('2026-01-15', '华南', '专业版', 38400.00, 3),
  ('2026-01-18', '华北', '标准版', 11200.00, 4),
  ('2026-01-22', '华北', '旗舰版', 52000.00, 1),
  ('2026-02-03', '华东', '旗舰版', 48000.00, 1),
  ('2026-02-07', '西南', '标准版',  7800.00, 2),
  ('2026-02-11', '西南', '专业版', 19200.00, 2),
  ('2026-02-14', '华东', '标准版', 14400.00, 5),
  ('2026-02-18', '华南', '旗舰版', 56000.00, 1),
  ('2026-02-21', '华北', '专业版', 22400.00, 2);

-- Optional: quick check
-- SELECT region, product_line, SUM(amount) AS amount_sum
-- FROM vr_demo_sales
-- WHERE biz_date >= '2026-01-01' AND biz_date < '2026-03-01'
-- GROUP BY region, product_line;
