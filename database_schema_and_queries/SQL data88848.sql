-- 1. MTAR Technologies
UPDATE target_companies 
SET research_evidence = 'Operates 7 advanced precision manufacturing plants in Hyderabad; supplies critical core components to ISRO and NPCIL under strict AS9100 quality tracking systems.'
WHERE company_name LIKE '%MTAR%';

-- 2. Arrow Engineering Industries
UPDATE target_companies 
SET research_evidence = 'Operates a 1.5-acre defense manufacturing facility in Jeedimetla, producing MIL-spec aircraft wire harnessing and multi-layer PCBs.'
WHERE company_name LIKE '%Arrow%';

-- 3. Azad Engineering
UPDATE target_companies 
SET research_evidence = 'A high-growth manufacturer supplying complex, high-precision rotating components to global aerospace OEMs including Boeing, Airbus, and General Electric.'
WHERE company_name LIKE '%Azad%';

-- 4. Vimta Labs
UPDATE target_companies 
SET research_evidence = 'Runs a massive, globally compliant contract research, food safety validation, and biopharma testing infrastructure matrix based out of Genome Valley.'
WHERE company_name LIKE '%Vimta%';

-- 5. Neuland Laboratories
UPDATE target_companies 
SET research_evidence = 'Focuses strictly on high-barrier, USFDA-approved complex API synthesis and contract manufacturing, completely uncoupled from generic bulk pharma traps.'
WHERE company_name LIKE '%Neuland%';

-- 6. Virchow Biotech
UPDATE target_companies 
SET research_evidence = 'Operates an advanced biological manufacturing plant in Hyderabad, specializing in complex biopharmaceuticals, biosimilars, and custom fermentation services.'
WHERE company_name LIKE '%Virchow%';

-- 7. Excelra
UPDATE target_companies 
SET research_evidence = 'Delivers specialized, data-driven life science tools and proprietary bioinformatics structures to global biopharma companies from its Hyderabad operations hub.'
WHERE company_name LIKE '%Excelra%';
-- 8. Glukem Biocare
UPDATE target_companies 
SET research_evidence = 'A mid-sized producer focused on specialized chemical synthesis, advanced intermediates, and custom API development with a dedicated manufacturing facility near Hyderabad.'
WHERE company_name LIKE '%Glukem%';
-- 9. Shantha Biotechnics (PE/Group Acquisition Test Case)
UPDATE target_companies 
SET 
    e1_producer_pass = 'FAIL', 
    overall_verdict = 'Disqualified',
    research_evidence = 'Disqualified: Fully acquired by Sanofi Group. Fails the Federer test because strategic decision-making shifted to a large multinational conglomerate instead of a promoter-driven operation.'
WHERE company_name LIKE '%Shantha%';

-- 10. Itaan Pharma (Development Status Check)
UPDATE target_companies 
SET 
    c6_growth_signals = 0,
    research_evidence = 'Borderline target: Possesses specialty development infrastructure but shows a highly sterile online presence and zero recent public growth or recruitment data.'
WHERE company_name LIKE '%Itaan%';

