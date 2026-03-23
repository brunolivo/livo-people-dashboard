-- ═══════════════════════════════════════════════════════════════
-- LIVO PEOPLE — Seed Data
-- Run AFTER the schema SQL
-- ═══════════════════════════════════════════════════════════════

-- Team Members (leadership first)
INSERT INTO team_members (id, first_name, full_name, email, team, position, supervisor_id) VALUES
  ('tm-carlos','Carlos','Carlos Manubens','carlos@getlivo.com','Leadership','CEO',NULL),
  ('tm-adnane','Adnane','Adnane Ouahabi','adnane@getlivo.com','Leadership','CTO','tm-carlos'),
  ('tm-ricardo','Ricardo','Ricardo Jover','ricardo@getlivo.com','Strategy & Expansion','Chief of Staff','tm-carlos'),
  ('tm-riccardo','Riccardo','Riccardo Guidati','riccardo.guidati@getlivo.com','Finance','Head of Finance','tm-carlos'),
  ('tm-jose','Jose','Jose Puig Ferrer','jose@getlivo.com','Operations','VP of Operations','tm-carlos'),
  ('tm-cristina','Cristina','Cristina Romagosa','cristina@getlivo.com','Account Management','Head of Account Management','tm-carlos'),
  ('tm-bruno','Bruno','Bruno Martins','bruno@getlivo.com','HR & People','Head of People','tm-carlos'),
  ('tm-eduardo','Eduardo','Eduardo Domenech Rubí','eduardo@getlivo.com','Sales','Enterprise Account Executive','tm-carlos'),
  ('tm-lucia','Lucía','Lucía Olivella Prats','lucia@getlivo.com','Sales','Junior Account Executive','tm-carlos'),
  ('tm-aitor','Aitor','Aitor Piñeyro Mur','aitor@getlivo.com','Product & Tech','Product Manager','tm-adnane'),
  ('tm-ruben-g','Rubén','Rubén Gaytán Inestal','ruben@getlivo.com','Product & Tech','Product Manager','tm-adnane'),
  ('tm-chi','Chi','Chi Pham','chi.pham@getlivo.com','Product & Tech','Fullstack Developer','tm-adnane'),
  ('tm-jack','Jack','Jack Phạm','jack@getlivo.com','Product & Tech','Backend Engineer','tm-adnane'),
  ('tm-jorge','Jorge','Jorge Sánchez Blanco','jorge.sanchez@getlivo.com','Product & Tech','Software Engineer','tm-adnane'),
  ('tm-rey','Rey','Rey Duc','duc@getlivo.com','Product & Tech','Software Engineer','tm-adnane'),
  ('tm-sara','Sara','Sara Valdes Belda','sara.valdes@getlivo.com','Product & Tech','Lead Product Designer','tm-adnane'),
  ('tm-marc','Marc','Marc Janer Ferrer','marc.janerferrer@getlivo.com','Product & Tech','Software Developer','tm-aitor'),
  ('tm-julia','Julia','Julia Hei','yin.hei@getlivo.com','Product & Tech','Data Analyst','tm-aitor'),
  ('tm-brian','Brian','Brian Panida Cansicio','brian@getlivo.com','Operations','LiveOps Supervisor','tm-jose'),
  ('tm-juan','Juan','Juan Luengo','juan.luengo@getlivo.com','Operations','Ops Analyst','tm-jose'),
  ('tm-daniel','Daniel','Daniel Martin Lafuente','daniel@getlivo.com','Marketing','Junior Product Marketing','tm-jose'),
  ('tm-merce','Mercè','Mercè Lorenzo Jaquez','merce@getlivo.com','Operations','LiveOps Agent','tm-brian'),
  ('tm-oriol','Oriol','Oriol Miralles','oriol@getlivo.com','Operations','LiveOps Agent','tm-brian'),
  ('tm-angeles','María','María de los Ángeles Misiac','mangeles@getlivo.com','Finance','Office Manager','tm-riccardo'),
  ('tm-claudia','Claudia','Claudia Pérez Mata','claudia.perez@getlivo.com','Account Management','Account Manager','tm-cristina'),
  ('tm-elizabeth','Elizabeth','Elizabeth Bannet','elizabeth@getlivo.com','Account Management','Account Manager','tm-cristina'),
  ('tm-patricia','Patricia','Patricia Charoenrook','patricia.charoenrook@getlivo.com','Account Management','Account Manager','tm-cristina'),
  ('tm-marta','Marta','Marta Carmiña','marta@getlivo.com','Strategy & Expansion','Head of New Verticals','tm-cristina'),
  ('tm-jaime','Jaime','Jaime Marquiegui','jaime.marquiegui@getlivo.com','Sales','City Manager – Madrid','tm-ricardo'),
  ('tm-martina','Martina','Martina Gimeno Gallardo','martina@getlivo.com','Marketing','Marketing Intern','tm-daniel')
ON CONFLICT (id) DO UPDATE SET full_name=EXCLUDED.full_name, email=EXCLUDED.email, team=EXCLUDED.team, position=EXCLUDED.position, supervisor_id=EXCLUDED.supervisor_id;

-- Role Assignments
INSERT INTO role_assignments (member_id, role) VALUES
  ('tm-carlos','super_admin'),
  ('tm-adnane','manager'),
  ('tm-jose','manager'),
  ('tm-cristina','manager'),
  ('tm-bruno','manager'),
  ('tm-aitor','manager'),
  ('tm-ruben-g','manager'),
  ('tm-brian','manager'),
  ('tm-riccardo','manager'),
  ('tm-daniel','manager'),
  ('tm-marta','manager'),
  ('tm-jaime','manager'),
  ('tm-ricardo','manager')
ON CONFLICT (member_id) DO UPDATE SET role=EXCLUDED.role;

-- Compensation Records
INSERT INTO comp_records (member_id, salary, target_bonus, cobee, cobee_alloc, esop_shares, perf_rating, level, track) VALUES
  ('tm-carlos',95000,20,200,'50/50 Split',8000,'game_changer','L5 — Director+','People Manager'),
  ('tm-adnane',88000,20,200,'100% Transport',7000,'game_changer','L5 — Director+','People Manager'),
  ('tm-riccardo',66000,15,200,'50/50 Split',3500,'key_player','L4 — Lead / Manager','People Manager'),
  ('tm-jose',70000,15,200,'50/50 Split',4000,'game_changer','L4 — Lead / Manager','People Manager'),
  ('tm-cristina',65000,15,200,'100% Meal Vouchers',3800,'game_changer','L4 — Lead / Manager','People Manager'),
  ('tm-bruno',68000,15,200,'50/50 Split',3500,'game_changer','L4 — Lead / Manager','People Manager'),
  ('tm-ricardo',62000,15,200,'50/50 Split',2500,'key_player','L4 — Lead / Manager','People Manager'),
  ('tm-eduardo',52000,10,200,'100% Meal Vouchers',1200,'key_player','L3 — Senior','IC — Individual Contributor'),
  ('tm-sara',54000,10,200,'50/50 Split',1500,'game_changer','L3 — Senior','IC — Individual Contributor'),
  ('tm-aitor',50000,10,200,'100% Meal Vouchers',1000,'key_player','L3 — Senior','IC — Individual Contributor'),
  ('tm-ruben-g',48000,10,200,'100% Meal Vouchers',800,'key_player','L3 — Senior','IC — Individual Contributor'),
  ('tm-marta',50000,10,200,'50/50 Split',1000,'game_changer','L3 — Senior','IC — Individual Contributor'),
  ('tm-jaime',46000,10,200,'100% Meal Vouchers',600,'key_player','L3 — Senior','IC — Individual Contributor'),
  ('tm-chi',42000,8,200,'50/50 Split',250,'key_player','L2 — Mid','IC — Individual Contributor'),
  ('tm-jack',40000,8,200,'100% Transport',200,'key_player','L2 — Mid','IC — Individual Contributor'),
  ('tm-jorge',38000,8,200,'100% Meal Vouchers',100,'developing','L2 — Mid','IC — Individual Contributor'),
  ('tm-rey',38000,8,200,'50/50 Split',150,'key_player','L2 — Mid','IC — Individual Contributor'),
  ('tm-marc',36000,8,200,'100% Meal Vouchers',100,'key_player','L2 — Mid','IC — Individual Contributor'),
  ('tm-brian',38000,8,200,'50/50 Split',200,'game_changer','L2 — Mid','IC — Individual Contributor'),
  ('tm-juan',36000,8,200,'100% Meal Vouchers',100,'key_player','L2 — Mid','IC — Individual Contributor'),
  ('tm-claudia',38000,8,200,'100% Meal Vouchers',150,'key_player','L2 — Mid','IC — Individual Contributor'),
  ('tm-elizabeth',37000,8,200,'50/50 Split',120,'key_player','L2 — Mid','IC — Individual Contributor'),
  ('tm-patricia',38000,8,200,'100% Meal Vouchers',150,'game_changer','L2 — Mid','IC — Individual Contributor'),
  ('tm-julia',36000,8,200,'50/50 Split',100,'key_player','L2 — Mid','IC — Individual Contributor'),
  ('tm-angeles',32000,8,200,'100% Meal Vouchers',0,'key_player','L2 — Mid','IC — Individual Contributor'),
  ('tm-daniel',30000,5,200,'100% Transport',0,'key_player','L1 — Junior','IC — Individual Contributor'),
  ('tm-merce',26000,5,200,'100% Meal Vouchers',0,'key_player','L1 — Junior','IC — Individual Contributor'),
  ('tm-oriol',26000,5,200,'100% Meal Vouchers',0,'key_player','L1 — Junior','IC — Individual Contributor'),
  ('tm-lucia',28000,5,200,'100% Meal Vouchers',0,'key_player','L1 — Junior','IC — Individual Contributor'),
  ('tm-martina',18000,0,0,'N/A',0,'unrated','L1 — Junior','IC — Individual Contributor')
ON CONFLICT (member_id) DO UPDATE SET salary=EXCLUDED.salary, target_bonus=EXCLUDED.target_bonus, cobee=EXCLUDED.cobee, esop_shares=EXCLUDED.esop_shares, perf_rating=EXCLUDED.perf_rating;

-- Budget Types
INSERT INTO budget_types (id, label, icon, q1, q2, q3, q4) VALUES
  ('merit', 'Merit Increases', '⭐', 96250, 0, 0, 0),
  ('promo', 'Promotions',      '🚀', 12500, 0, 0, 0),
  ('market','Market Adj.',     '📊', 6250,  0, 0, 0)
ON CONFLICT (id) DO UPDATE SET q1=EXCLUDED.q1, q2=EXCLUDED.q2, q3=EXCLUDED.q3, q4=EXCLUDED.q4;

-- Budget Areas
INSERT INTO budget_areas (team, merit, promo, market) VALUES
  ('Leadership', 15000, 0, 0),
  ('Engineering', 25000, 5000, 2000),
  ('Product', 18000, 3000, 1500),
  ('Sales', 20000, 2500, 1500),
  ('Operations', 10000, 1000, 500),
  ('Finance', 8250, 1000, 750)
ON CONFLICT (team) DO UPDATE SET merit=EXCLUDED.merit, promo=EXCLUDED.promo, market=EXCLUDED.market;

-- Salary Bands
INSERT INTO salary_bands (level, min_salary, mid_salary, max_salary, bonus_target, esop_eligible, sort_order) VALUES
  ('L1 — Junior',          24000, 30000,  36000,  5, FALSE, 1),
  ('L2 — Mid',             34000, 42000,  50000,  8, FALSE, 2),
  ('L3 — Senior',          46000, 54000,  62000, 10, TRUE,  3),
  ('L4 — Lead / Manager',  60000, 68000,  76000, 15, TRUE,  4),
  ('L5 — Director+',       80000, 92000, 110000, 20, TRUE,  5)
ON CONFLICT (level) DO UPDATE SET min_salary=EXCLUDED.min_salary, mid_salary=EXCLUDED.mid_salary, max_salary=EXCLUDED.max_salary;