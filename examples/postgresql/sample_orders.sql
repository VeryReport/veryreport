-- VeryReport Developer Hub — PostgreSQL demo for BI / reports
-- See: examples/postgresql/README.md

DROP TABLE IF EXISTS vr_demo_orders;
CREATE TABLE vr_demo_orders (
  id          BIGSERIAL PRIMARY KEY,
  order_date  DATE           NOT NULL,
  region      VARCHAR(32)    NOT NULL,
  category    VARCHAR(64)    NOT NULL,
  gmv         NUMERIC(18, 2) NOT NULL,
  order_cnt   INT            NOT NULL
);

CREATE INDEX idx_vr_demo_orders_date ON vr_demo_orders (order_date);
CREATE INDEX idx_vr_demo_orders_dim ON vr_demo_orders (region, category);

INSERT INTO vr_demo_orders (order_date, region, category, gmv, order_cnt) VALUES
  ('2026-01-06', 'East',  'Hardware', 15200.00, 12),
  ('2026-01-09', 'East',  'Software', 28800.00,  8),
  ('2026-01-14', 'South', 'Hardware',  9100.00,  7),
  ('2026-01-20', 'South', 'Software', 33600.00, 10),
  ('2026-01-25', 'North', 'Hardware', 12000.00,  9),
  ('2026-01-28', 'North', 'Services', 45000.00,  3),
  ('2026-02-04', 'East',  'Services', 41000.00,  2),
  ('2026-02-08', 'West',  'Hardware',  7600.00,  5),
  ('2026-02-12', 'West',  'Software', 19800.00,  6),
  ('2026-02-16', 'East',  'Hardware', 16500.00, 11),
  ('2026-02-19', 'South', 'Services', 52000.00,  4),
  ('2026-02-23', 'North', 'Software', 21400.00,  7);

-- Optional check:
-- SELECT date_trunc('month', order_date)::date AS month_start, region, SUM(gmv)
-- FROM vr_demo_orders
-- WHERE order_date >= DATE '2026-01-01' AND order_date < DATE '2026-03-01'
-- GROUP BY 1, region;
