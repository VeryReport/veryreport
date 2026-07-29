-- VeryReport Developer Hub — ERP-style orders (MySQL)
-- See: examples/erp/README.md

CREATE DATABASE IF NOT EXISTS vr_demo DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE vr_demo;

DROP TABLE IF EXISTS vr_erp_order_line;
DROP TABLE IF EXISTS vr_erp_order;

CREATE TABLE vr_erp_order (
  id             BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  order_no       VARCHAR(32)     NOT NULL,
  order_date     DATE            NOT NULL,
  customer_name  VARCHAR(128)    NOT NULL,
  sales_rep      VARCHAR(64)     NOT NULL,
  status         VARCHAR(16)     NOT NULL COMMENT 'open/partial/closed',
  PRIMARY KEY (id),
  UNIQUE KEY uk_order_no (order_no),
  KEY idx_order_date (order_date)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE vr_erp_order_line (
  id           BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  order_id     BIGINT UNSIGNED NOT NULL,
  sku_code     VARCHAR(64)     NOT NULL,
  qty_ordered  DECIMAL(18, 2)  NOT NULL,
  qty_shipped  DECIMAL(18, 2)  NOT NULL,
  unit_price   DECIMAL(18, 2)  NOT NULL,
  PRIMARY KEY (id),
  KEY idx_line_order (order_id),
  CONSTRAINT fk_line_order FOREIGN KEY (order_id) REFERENCES vr_erp_order (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO vr_erp_order (order_no, order_date, customer_name, sales_rep, status) VALUES
  ('SO-20260101', '2026-01-08', '星河科技', '张伟', 'partial'),
  ('SO-20260102', '2026-01-12', '南湾制造', '李娜', 'closed'),
  ('SO-20260103', '2026-01-20', '北辰贸易', '张伟', 'open'),
  ('SO-20260201', '2026-02-05', '星河科技', '王强', 'partial'),
  ('SO-20260202', '2026-02-14', '青桐电子', '李娜', 'open'),
  ('SO-20260203', '2026-02-21', '南湾制造', '王强', 'partial');

INSERT INTO vr_erp_order_line (order_id, sku_code, qty_ordered, qty_shipped, unit_price) VALUES
  (1, 'SKU-A100', 100, 80, 200.00),
  (1, 'SKU-B200',  40, 40, 1000.00),
  (2, 'SKU-A100',  60, 60, 200.00),
  (2, 'SKU-C300',  10, 10, 3000.00),
  (3, 'SKU-B200',  25,  0, 1000.00),
  (3, 'SKU-C300',   5,  0, 3000.00),
  (4, 'SKU-A100', 120, 90, 200.00),
  (4, 'SKU-C300',   8,  5, 3000.00),
  (5, 'SKU-B200',  50, 20, 1000.00),
  (6, 'SKU-A100',  80, 80, 200.00),
  (6, 'SKU-B200',  30, 10, 1000.00);
