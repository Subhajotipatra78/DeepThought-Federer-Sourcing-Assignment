CREATE TABLE target_companies (
    id SERIAL PRIMARY KEY,
    company_name VARCHAR(150) NOT NULL,
    website_url VARCHAR(255) NOT NULL,
    segment VARCHAR(100),
    e1_producer_pass VARCHAR(10) DEFAULT 'PENDING',
    e2_accessible_pass VARCHAR(10) DEFAULT 'PENDING',
    c3_differentiated INT DEFAULT 0,
    c4_decision_maker INT DEFAULT 0,
    c5_growing_sector INT DEFAULT 0,
    c6_growth_signals INT DEFAULT 0,
    c7_systems_maturity INT DEFAULT 0,
    c8_leadership_succession INT DEFAULT 0,
    research_evidence TEXT,
    overall_verdict VARCHAR(50) DEFAULT 'Under Review'
); 