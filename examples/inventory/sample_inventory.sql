-- VeryReport Developer Hub — Inventory demo (MySQL)
-- See: examples/inventory/README.md

CREATE DATABASE IF NOT EXISTS vr_demo DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE vr_demo;

DROP TABLE IF EXISTS vr_inv_snapshot;
CREATE TABLE vr_inv_snapshot (
  id              BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  snapshot_date   DATE            NOT NULL,
  warehouse_code  VARCHAR(32)     NOT NULL,
  sku_code        VARCHAR(64)     NOT NULL,
  sku_name        VARCHAR(128)    NOT NULL,
  qty_on_hand     DECIMAL(18, 2)  NOT NULL,
  safety_qty      DECIMAL(18, 2)  NOT NULL,
  amount_on_hand  DECIMAL(18, 2)  NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY uk_inv_snap (snapshot_date, warehouse_code, sku_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO vr_inv_snapshot (snapshot_date, warehouse_code, sku_code, sku_name, qty_on_hand, safety_qty, amount_on_hand) VALUES
  ('2026-02-28', 'WH-SH', 'SKU-A100', '标准件A', 120, 80, 24000.00),
  ('2026-02-28', 'WH-SH', 'SKU-B200', '专业件B',  45, 60, 45000.00),
  ('2026-02-28', 'WH-SH', 'SKU-C300', '旗舰件C',  18, 20, 54000.00),
  ('2026-02-28', 'WH-GZ', 'SKU-A100', '标准件A', 200, 100, 40000.00),
  ('2026-02-28', 'WH-GZ', 'SKU-B200', '专业件B',  90, 50, 90000.00),
  ('2026-02-28', 'WH-BJ', 'SKU-A100', '标准件A',  30, 80,  6000.00),
  ('2026-02-28', 'WH-BJ', 'SKU-C300', '旗舰件C',  55, 25,165000.00);

DROP TABLE IF EXISTS vr_inv_move;
CREATE TABLE vr_inv_move (
  id              BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  move_date       DATE            NOT NULL,
  warehouse_code  VARCHAR(32)     NOT NULL,
  sku_code        VARCHAR(64)     NOT NULL,
  move_type       VARCHAR(8)      NOT NULL COMMENT 'in/out',
  qty             DECIMAL(18, 2)  NOT NULL,
  PRIMARY KEY (id),
  KEY idx_inv_move (move_date, warehouse_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO vr_inv_move (move_date, warehouse_code, sku_code, move_type, qty) VALUES
  ('2026-02-01', 'WH-SH', 'SKU-A100', 'in',  50),
  ('2026-02-03', 'WH-SH', 'SKU-A100', 'out', 20),
  ('2026-02-05', 'WH-SH', 'SKU-B200', 'in',  30),
  ('2026-02-08', 'WH-SH', 'SKU-B200', 'out', 15),
  ('2026-02-10', 'WH-GZ', 'SKU-A100', 'in',  80),
  ('2026-02-12', 'WH-GZ', 'SKU-A100', 'out', 40),
  ('2026-02-15', 'WH-BJ', 'SKU-C300', 'in',  20),
  ('2026-02-18', 'WH-BJ', 'SKU-C300', 'out',  5),
  ('2026-02-20', 'WH-BJ', 'SKU-A100', 'out', 25),
  ('2026-02-22', 'WH-GZ', 'SKU-B200', 'out', 10),
  ('2026-02-25', 'WH-SH', 'SKU-C300', 'in',  10),
  ('2026-02-27', 'WH-SH', 'SKU-C300', 'out',  8);
