-- VeryReport Developer Hub — ClickHouse demo events
-- See: examples/clickhouse/README.md
-- Adjust database name if needed.

CREATE DATABASE IF NOT EXISTS vr_demo;

CREATE TABLE IF NOT EXISTS vr_demo.vr_demo_events
(
    event_time  DateTime,
    region      String,
    event_type  String,
    amount      Float64
)
ENGINE = MergeTree
ORDER BY (event_time, region);

TRUNCATE TABLE vr_demo.vr_demo_events;

INSERT INTO vr_demo.vr_demo_events (event_time, region, event_type, amount) VALUES
    ('2026-01-05 10:00:00', 'East',  'purchase', 120.5),
    ('2026-01-05 11:30:00', 'East',  'view',       0),
    ('2026-01-06 09:15:00', 'South', 'purchase',  88.0),
    ('2026-01-06 14:00:00', 'North', 'purchase', 210.2),
    ('2026-01-07 08:40:00', 'West',  'view',       0),
    ('2026-01-07 16:20:00', 'East',  'purchase',  56.3),
    ('2026-02-01 10:00:00', 'South', 'purchase', 140.0),
    ('2026-02-02 12:00:00', 'North', 'purchase',  99.9),
    ('2026-02-03 13:30:00', 'West',  'purchase', 175.4),
    ('2026-02-04 15:00:00', 'East',  'purchase',  64.0);
