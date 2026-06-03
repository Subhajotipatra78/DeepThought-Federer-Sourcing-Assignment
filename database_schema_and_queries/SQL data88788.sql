-- Bulk update baseline numbers and gates based on the industry segment
UPDATE target_companies
SET 
    e1_producer_pass = 'PASS',
    e2_accessible_pass = 'PASS',
    overall_verdict = 'Fit',
    
    -- C3 (Differentiated): High-tech sectors get a strong baseline
    c3_differentiated = CASE 
        WHEN segment LIKE '%Aerospace%' OR segment LIKE '%Biotech%' OR segment LIKE '%Complex APIs%' THEN 20
        ELSE 10
    END,
    
    -- C4 (Decision-Maker): Default to Moderate baseline (can upgrade to 15 later)
    c4_decision_maker = 8,
    
    -- C5 (Growing Sector): Flag tailwinds based on India's current hot sectors
    c5_growing_sector = CASE 
        WHEN segment LIKE '%Aerospace%' OR segment LIKE '%Complex APIs%' THEN 15 -- Defense indigenization & China+1
        ELSE 8
    END,
    
    -- C6 (Growth Signals): Default to Moderate baseline
    c6_growth_signals = 8,
    
    -- C7 (Systems Maturity): Highly regulated spaces baseline higher due to quality compliance
    c7_systems_maturity = CASE 
        WHEN segment LIKE '%Aerospace%' OR segment LIKE '%Biotech%' OR segment LIKE '%Complex APIs%' THEN 20
        ELSE 10
    END,
    
    -- C8 (Leadership Succession): Default to Moderate baseline
    c8_leadership_succession = 8;
