-- 1. Build the dynamic calculations view engine
CREATE OR REPLACE VIEW federer_scoring_dashboard AS
SELECT 
    id,
    company_name,
    segment,
    website_url,
    e1_producer_pass,
    e2_accessible_pass,
    -- Safely calculate the sum dynamically
    (c3_differentiated + c4_decision_maker + c5_growing_sector + c6_growth_signals + c7_systems_maturity + c8_leadership_succession) AS total_federer_score,
    -- Apply the assignment rating threshold bands
    CASE 
        WHEN (c3_differentiated + c4_decision_maker + c5_growing_sector + c6_growth_signals + c7_systems_maturity + c8_leadership_succession) >= 80 THEN 'A — Strong Federer'
        WHEN (c3_differentiated + c4_decision_maker + c5_growing_sector + c6_growth_signals + c7_systems_maturity + c8_leadership_succession) BETWEEN 60 AND 79 THEN 'B — Probable Federer'
        WHEN (c3_differentiated + c4_decision_maker + c5_growing_sector + c6_growth_signals + c7_systems_maturity + c8_leadership_succession) BETWEEN 40 AND 59 THEN 'C — Borderline'
        ELSE 'D — Not ICP'
    END AS target_band,
    research_evidence,
    overall_verdict
FROM target_companies;
