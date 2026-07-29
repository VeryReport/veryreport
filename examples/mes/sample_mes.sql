-- VeryReport Developer Hub — MES output & defects (MySQL)
-- See: examples/mes/README.md

CREATE DATABASE IF NOT EXISTS vr_demo DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE vr_demo;

DROP TABLE IF EXISTS vr_mes_defect;
DROP TABLE IF EXISTS vr_mes_output;

CREATE TABLE vr_mes_output (
  id           BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  work_date    DATE            NOT NULL,
  line_code    VARCHAR(32)     NOT NULL,
  shift_code   VARCHAR(16)     NOT NULL COMMENT 'D/N',
  plan_qty     DECIMAL(18, 2)  NOT NULL,
  actual_qty   DECIMAL(18, 2)  NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY uk_mes_out (work_date, line_code, shift_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO vr_mes_output (work_date, line_code, shift_code, plan_qty, actual_qty) VALUES
  ('2026-02-24', 'L1', 'D', 1000, 980),
  ('2026-02-24', 'L1', 'N',  800, 760),
  ('2026-02-24', 'L2', 'D', 1200, 1180),
  ('2026-02-24', 'L2', 'N',  900, 910),
  ('2026-02-25', 'L1', 'D', 1000, 1020),
  ('2026-02-25', 'L1', 'N',  800, 790),
  ('2026-02-25', 'L2', 'D', 1200, 1150),
  ('2026-02-25', 'L2', 'N',  900, 870),
  ('2026-02-26', 'L1', 'D', 1000, 995),
  ('2026-02-26', 'L2', 'D', 1200, 1210),
  ('2026-02-26', 'L3', 'D',  600, 580),
  ('2026-02-27', 'L1', 'D', 1000, 970),
  ('2026-02-27', 'L2', 'D', 1200, 1195),
  ('2026-02-27', 'L3', 'D',  600, 610);

CREATE TABLE vr_mes_defect (
  id             BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  work_date      DATE            NOT NULL,
  line_code      VARCHAR(32)     NOT NULL,
  shift_code     VARCHAR(16)     NOT NULL,
  defect_reason  VARCHAR(64)     NOT NULL,
  defect_qty     DECIMAL(18, 2)  NOT NULL,
  PRIMARY KEY (id),
  KEY idx_mes_def (work_date, line_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO vr_mes_defect (work_date, line_code, shift_code, defect_reason, defect_qty) VALUES
  ('2026-02-24', 'L1', 'D', '尺寸超差', 12),
  ('2026-02-24', 'L1', 'D', '外观瑕疵',  8),
  ('2026-02-24', 'L1', 'N', '尺寸超差', 15),
  ('2026-02-24', 'L2', 'D', '装配不良', 10),
  ('2026-02-25', 'L1', 'D', '外观瑕疵',  6),
  ('2026-02-25', 'L2', 'D', '尺寸超差', 18),
  ('2026-02-25', 'L2', 'N', '装配不良',  9),
  ('2026-02-26', 'L1', 'D', '其他',      5),
  ('2026-02-26', 'L3', 'D', '尺寸超差', 14),
  ('2026-02-27', 'L1', 'D', '外观瑕疵', 11),
  ('2026-02-27', 'L2', 'D', '装配不良',  7),
  ('2026-02-27', 'L3', 'D', '尺寸超差',  4);
