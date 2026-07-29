-- VeryReport Developer Hub — CRM pipeline & payments (MySQL)
-- See: examples/crm/README.md

CREATE DATABASE IF NOT EXISTS vr_demo DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE vr_demo;

DROP TABLE IF EXISTS vr_crm_payment;
DROP TABLE IF EXISTS vr_crm_opportunity;

CREATE TABLE vr_crm_opportunity (
  id             BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  opp_name       VARCHAR(128)    NOT NULL,
  customer_name  VARCHAR(128)    NOT NULL,
  owner_name     VARCHAR(64)     NOT NULL,
  stage          VARCHAR(32)     NOT NULL COMMENT 'lead/qualified/proposal/won/lost',
  amount         DECIMAL(18, 2)  NOT NULL,
  created_date   DATE            NOT NULL,
  expect_close   DATE                     DEFAULT NULL,
  PRIMARY KEY (id),
  KEY idx_crm_opp (created_date, stage)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO vr_crm_opportunity (opp_name, customer_name, owner_name, stage, amount, created_date, expect_close) VALUES
  ('报表平台扩容', '星河科技', '张伟', 'proposal', 180000.00, '2026-01-06', '2026-03-15'),
  ('BI 试点', '南湾制造', '李娜', 'qualified',  96000.00, '2026-01-10', '2026-02-28'),
  ('私有化替换', '北辰贸易', '张伟', 'won',      250000.00, '2026-01-05', '2026-01-25'),
  ('填报项目', '青桐电子', '王强', 'lead',       45000.00, '2026-02-02', '2026-04-01'),
  ('大屏建设项目', '星河科技', '王强', 'proposal',120000.00, '2026-02-08', '2026-03-20'),
  ('年度续费', '南湾制造', '李娜', 'won',        80000.00, '2026-02-01', '2026-02-10'),
  ('竞品替换失败', '海图物流', '张伟', 'lost',    150000.00, '2026-01-18', '2026-02-01'),
  ('Vera 问数 POC', '北辰贸易', '李娜', 'qualified', 60000.00, '2026-02-12', '2026-03-30');

CREATE TABLE vr_crm_payment (
  id             BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  pay_date       DATE            NOT NULL,
  customer_name  VARCHAR(128)    NOT NULL,
  owner_name     VARCHAR(64)     NOT NULL,
  pay_amt        DECIMAL(18, 2)  NOT NULL,
  pay_method     VARCHAR(32)     NOT NULL,
  PRIMARY KEY (id),
  KEY idx_crm_pay (pay_date)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO vr_crm_payment (pay_date, customer_name, owner_name, pay_amt, pay_method) VALUES
  ('2026-01-26', '北辰贸易', '张伟', 125000.00, '电汇'),
  ('2026-01-28', '北辰贸易', '张伟', 125000.00, '电汇'),
  ('2026-02-11', '南湾制造', '李娜',  80000.00, '电汇'),
  ('2026-02-15', '星河科技', '张伟',  50000.00, '支票'),
  ('2026-02-20', '青桐电子', '王强',  20000.00, '电汇'),
  ('2026-02-25', '星河科技', '王强',  30000.00, '电汇');
