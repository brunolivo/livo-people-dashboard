-- ═══════════════════════════════════════════════════════════════
-- LIVO PEOPLE — Supabase Schema
-- Run this in the Supabase SQL Editor (single paste)
-- ═══════════════════════════════════════════════════════════════

-- Team Members
CREATE TABLE IF NOT EXISTS team_members (
  id          TEXT PRIMARY KEY,
  first_name  TEXT NOT NULL,
  full_name   TEXT NOT NULL,
  email       TEXT UNIQUE,
  team        TEXT,
  position    TEXT,
  supervisor_id TEXT REFERENCES team_members(id),
  created_at  TIMESTAMPTZ DEFAULT NOW()
);

-- Role Assignments
CREATE TABLE IF NOT EXISTS role_assignments (
  member_id TEXT PRIMARY KEY REFERENCES team_members(id) ON DELETE CASCADE,
  role      TEXT NOT NULL CHECK (role IN ('super_admin','manager','ic')) DEFAULT 'ic'
);

-- Compensation Records
CREATE TABLE IF NOT EXISTS comp_records (
  member_id          TEXT PRIMARY KEY REFERENCES team_members(id) ON DELETE CASCADE,
  salary             NUMERIC DEFAULT 0,
  target_bonus       NUMERIC DEFAULT 0,
  cobee              NUMERIC DEFAULT 0,
  cobee_alloc        TEXT,
  esop_shares        INTEGER DEFAULT 0,
  esop_share_price   NUMERIC DEFAULT 1.00,
  perf_rating        TEXT DEFAULT 'unrated',
  perf_rating_override BOOLEAN DEFAULT FALSE,
  level              TEXT,
  track              TEXT,
  review_cycle       TEXT,
  updated_at         TIMESTAMPTZ DEFAULT NOW()
);

-- Compensation History
CREATE TABLE IF NOT EXISTS comp_history (
  id          TEXT PRIMARY KEY,
  member_id   TEXT REFERENCES team_members(id) ON DELETE CASCADE,
  ts          TEXT,
  type        TEXT,
  field       TEXT,
  old_val     TEXT,
  new_val     TEXT,
  note        TEXT,
  changed_by  TEXT,
  created_at  TIMESTAMPTZ DEFAULT NOW()
);

-- Company OKRs
CREATE TABLE IF NOT EXISTS company_goals (
  id         TEXT PRIMARY KEY,
  title      TEXT NOT NULL,
  tagline    TEXT,
  owner      TEXT,
  status     TEXT DEFAULT 'on_track',
  sort_order INTEGER DEFAULT 0
);

-- Company Key Results
CREATE TABLE IF NOT EXISTS key_results (
  id          TEXT PRIMARY KEY,
  goal_id     TEXT REFERENCES company_goals(id) ON DELETE CASCADE,
  text        TEXT NOT NULL,
  current_val NUMERIC DEFAULT 0,
  target      NUMERIC DEFAULT 100,
  unit        TEXT DEFAULT '%',
  status      TEXT DEFAULT 'on_track',
  sort_order  INTEGER DEFAULT 0
);

-- Area OKRs
CREATE TABLE IF NOT EXISTS area_goals (
  id         TEXT PRIMARY KEY,
  title      TEXT NOT NULL,
  tagline    TEXT,
  area       TEXT,
  owner_id   TEXT REFERENCES team_members(id),
  status     TEXT DEFAULT 'on_track'
);

-- Area Key Results
CREATE TABLE IF NOT EXISTS area_key_results (
  id           TEXT PRIMARY KEY,
  area_goal_id TEXT REFERENCES area_goals(id) ON DELETE CASCADE,
  text         TEXT NOT NULL,
  current_val  NUMERIC DEFAULT 0,
  target       NUMERIC DEFAULT 100,
  unit         TEXT DEFAULT '%',
  status       TEXT DEFAULT 'on_track'
);

-- Budget
CREATE TABLE IF NOT EXISTS budget_meta (
  id    SERIAL PRIMARY KEY,
  year  INTEGER DEFAULT 2026
);

CREATE TABLE IF NOT EXISTS budget_types (
  id    TEXT PRIMARY KEY,  -- 'merit','promo','market'
  label TEXT,
  icon  TEXT,
  q1    NUMERIC DEFAULT 0,
  q2    NUMERIC DEFAULT 0,
  q3    NUMERIC DEFAULT 0,
  q4    NUMERIC DEFAULT 0
);

CREATE TABLE IF NOT EXISTS budget_areas (
  id     SERIAL PRIMARY KEY,
  team   TEXT UNIQUE,
  merit  NUMERIC DEFAULT 0,
  promo  NUMERIC DEFAULT 0,
  market NUMERIC DEFAULT 0
);

-- Salary Bands
CREATE TABLE IF NOT EXISTS salary_bands (
  id            SERIAL PRIMARY KEY,
  level         TEXT UNIQUE,
  track         TEXT,
  min_salary    NUMERIC,
  mid_salary    NUMERIC,
  max_salary    NUMERIC,
  bonus_target  NUMERIC DEFAULT 0,
  esop_eligible BOOLEAN DEFAULT FALSE,
  sort_order    INTEGER DEFAULT 0
);

-- Key Positions & Key Players
CREATE TABLE IF NOT EXISTS key_positions (
  member_id TEXT PRIMARY KEY REFERENCES team_members(id) ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS key_players (
  member_id TEXT PRIMARY KEY REFERENCES team_members(id) ON DELETE CASCADE
);

-- ── Enable Row Level Security (open read for demo) ───────────────
ALTER TABLE team_members     ENABLE ROW LEVEL SECURITY;
ALTER TABLE comp_records      ENABLE ROW LEVEL SECURITY;
ALTER TABLE comp_history      ENABLE ROW LEVEL SECURITY;
ALTER TABLE company_goals     ENABLE ROW LEVEL SECURITY;
ALTER TABLE key_results       ENABLE ROW LEVEL SECURITY;
ALTER TABLE area_goals        ENABLE ROW LEVEL SECURITY;
ALTER TABLE area_key_results  ENABLE ROW LEVEL SECURITY;
ALTER TABLE budget_types      ENABLE ROW LEVEL SECURITY;
ALTER TABLE budget_areas      ENABLE ROW LEVEL SECURITY;
ALTER TABLE salary_bands      ENABLE ROW LEVEL SECURITY;
ALTER TABLE key_positions     ENABLE ROW LEVEL SECURITY;
ALTER TABLE key_players       ENABLE ROW LEVEL SECURITY;
ALTER TABLE role_assignments  ENABLE ROW LEVEL SECURITY;

-- Allow full access via anon key (demo mode — lock down later with real auth)
CREATE POLICY "public_all" ON team_members     FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "public_all" ON comp_records      FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "public_all" ON comp_history      FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "public_all" ON company_goals     FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "public_all" ON key_results       FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "public_all" ON area_goals        FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "public_all" ON area_key_results  FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "public_all" ON budget_types      FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "public_all" ON budget_areas      FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "public_all" ON salary_bands      FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "public_all" ON key_positions     FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "public_all" ON key_players       FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "public_all" ON role_assignments  FOR ALL USING (true) WITH CHECK (true);
