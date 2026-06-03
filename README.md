# Portfolio Project Methodology — Hyderabad Sourcing Channel

## 1. Project Objective & Scope
The objective of this project is to build an automated data engineering pipeline to source, score, and prioritize mid-market manufacturing companies (revenue band: ₹50Cr–₹500Cr) based in the Hyderabad region. The evaluation applies the strict "Federer Criteria" to isolate high-barrier, promoter-driven engineering and life-science targets while systematically filtering out pure traders, distributors, and massive enterprise conglomerates.

---

## 2. Technical Stack
* **Data Manipulation & Ingestion:** Python 3, Pandas
* **Database Engine:** PostgreSQL
* **Database Driver/ORM:** SQLAlchemy
* **Analytical / Presentation Layer:** pgAdmin 4, Microsoft Excel (CSV Data Format)

---

## 3. Data Pipeline & Engineering Workflow

### Step 1: Raw Universe Gathering (Python Layer)
The target sourcing operation began by compiling a raw universe of 25 companies across three core industrial baskets in Hyderabad: Precision Engineering/Aerospace, Biotech, and Complex Pharmaceutical APIs. To simulate a live production environment while preventing web-scraping rate limits, data was processed using a Python script in a Jupyter Notebook to structure a standard relational database schema.

### Step 2: Relational Schema & Database Ingestion
Using Python’s `SQLAlchemy` library, the parsed data frames were pushed locally into a PostgreSQL instance. The schema enforces key structural data attributes including company segments, physical product descriptions ("what they make"), estimated revenue bands, verified decision-maker titles, and personalized B2B outreach hooks.

### Step 3: The Automated "Federer Scoring" Engine (SQL Layer)
Rather than manually calculating numbers row-by-row, the analytical logic was entirely handled via an automated database view named `federer_scoring_dashboard`. 

A conditional SQL rule matrix was implemented to evaluate and score the core qualifying metrics globally:
* **Gate Filters (E1 & E2):** Dynamic validation checks ensuring the target is a physical producer and remains contactable.
* **Criterion C3 (Differentiation):** Automated weightings assigning higher scores (20 points) to high-barrier sectors like Aerospace and Complex APIs, compared to standard industrial segments (10 points).
* **Criteria C4–C8 (Maturity Signals):** Logic structures evaluating proxy growth markers, decision-maker profiles, and digital systems maturity traits.

### Step 4: Strict Intentional Fail-Case Testing
To demonstrate professional validation discipline, the pipeline incorporates explicit "fail cases" (e.g., Bharat Biotech, Biological E, Laurus Labs, Shantha Biotechnics). These companies are deliberately included to verify that the engine accurately triggers `FAIL` states and drops targets into a `Disqualified` status when a firm exceeds the ₹500Cr revenue threshold or shifts away from a promoter-driven infrastructure due to corporate acquisition.

### Step 5: Prioritization & Final Export
The final reporting view aggregates all calculations, sums individual criteria into an `overall_federer_score` (out of 100), and dynamically assigns the company to a prioritized classification grid:
* **Band A (Strong Federer Fit):** Total Score ≥ 80
* **Band B (Probable Federer Fit):** Total Score 60–79

The final matrix was sorted in descending order by priority and exported straight from the database engine into a clean, checklist-compliant comma-delimited asset file (`hyderabad_final_federer_analysis.csv`).
