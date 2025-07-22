# DemoDataBot

DemoDataBot will create a synthetic data set optimized for EDA, visualization, and web app development. For more information about the data, please view the `CLAUDE.md` and `.claude/PLAN.md` files.

## Prerequisites

Demobot uses [Claude Code](https://www.anthropic.com/claude-code) to generate projects. To run Demobot, you need:

1.  **Node.js** - Required to run Claude Code (comes with `npx`)
2.  **Anthropic API Key** - Set the `ANTHROPIC_API_KEY` environment variable with your API key

## Usage

### Quick Start

1.  Open a terminal in this directory

2.  Start demobot by running Claude Code:

    ``` bash
    npx @anthropic-ai/claude-code
    ```

3.  Tell it to create a demo project for your customer:

    ```         
    > Create data for [Company Name].
    ```

4.  Answer the setup questions. If there are certain prompts that you don't know the answer to, you can call them out as "unknown" or "unsure" and Demobot will research them for you.

5.  Occasionally, Demobot may ask for confirmation or additional details. Respond as needed.

## Available Datasets

The following 19 synthetic datasets have been generated for demonstration purposes across key industry verticals. Each dataset contains exactly 5 columns with 400-500 rows and includes intentional data quality issues (less than 1% of values) to showcase data cleaning and validation capabilities.

### Core Business Sectors

#### **`pharma/`** - Pharmaceutical Research Data
- `data.csv` - Clinical trial and drug research data (450 rows)
- Columns: trial_id, drug_compound, patient_age, efficacy_score, adverse_events
- **Data Quality Issues**: Negative patient ages (impossible values)
- **Demo Scenarios**: Age validation, clinical trial analysis, efficacy visualization

#### **`healthcare/`** - Hospital Operations Data  
- `data.csv` - Patient care and hospital metrics (425 rows)
- Columns: patient_id, department, length_of_stay, total_charges, satisfaction_score
- **Data Quality Issues**: Negative total charges (impossible values)
- **Demo Scenarios**: Cost analysis, patient satisfaction tracking, department performance

#### **`life_sciences/`** - Biotech Research Data
- `data.csv` - Laboratory research and protein studies (440 rows)  
- Columns: experiment_id, research_area, protein_concentration, success_rate, funding_stage
- **Data Quality Issues**: Negative protein concentrations (impossible values)
- **Demo Scenarios**: Research pipeline analysis, protein concentration validation, funding stage tracking

#### **`insurance/`** - Claims and Policy Data
- `data.csv` - Insurance claims processing and risk assessment (435 rows)
- Columns: policy_id, policy_type, customer_age, claim_amount, claim_status
- **Data Quality Issues**: Extreme customer ages (200+ years, impossible values)
- **Demo Scenarios**: Age validation, claim amount analysis, risk assessment

#### **`finance/`** - Transactions and Portfolio Data
- `data.csv` - Financial transactions and investment performance (460 rows)
- Columns: transaction_id, asset_class, transaction_amount, annual_return, risk_category
- **Data Quality Issues**: Extreme annual returns (500%+ or -200%, impossible values)
- **Demo Scenarios**: Return validation, portfolio analysis, risk categorization

#### **`banking/`** - Operations and Loan Data
- `data.csv` - Banking operations and credit analysis (445 rows)
- Columns: account_id, loan_type, loan_amount, credit_score, default_risk
- **Data Quality Issues**: Invalid credit scores (>850, <0, impossible values)
- **Demo Scenarios**: Credit score validation, loan analysis, default risk modeling

#### **`consulting/`** - Project Management Data
- `data.csv` - Client engagement and project performance (430 rows)
- Columns: project_id, industry_sector, project_duration, budget_utilization, client_satisfaction
- **Data Quality Issues**: Negative project durations (impossible values)
- **Demo Scenarios**: Duration validation, budget analysis, client satisfaction tracking

### Industry & Manufacturing

#### **`manufacturing/`** - Production Metrics Data
- `data.csv` - Manufacturing performance and quality control (455 rows)
- Columns: batch_id, product_line, production_volume, quality_score, defect_rate
- **Data Quality Issues**: Negative production volumes (impossible values)
- **Demo Scenarios**: Volume validation, quality analysis, defect tracking

#### **`energy/`** - Power Generation Data
- `data.csv` - Energy production and efficiency metrics (420 rows)
- Columns: plant_id, energy_source, generation_mwh, efficiency_percent, maintenance_status
- **Data Quality Issues**: Negative power generation (impossible values)
- **Demo Scenarios**: Generation validation, efficiency analysis, renewable energy tracking

#### **`chemicals/`** - Production and Safety Data
- `data.csv` - Chemical manufacturing and safety monitoring (465 rows)
- Columns: batch_id, chemical_type, production_tons, temperature_celsius, safety_rating
- **Data Quality Issues**: Extreme temperatures (-500°C, 2000°C, impossible values)
- **Demo Scenarios**: Temperature validation, production analysis, safety monitoring

#### **`transportation/`** - Logistics Data
- `data.csv` - Shipping and fleet management (475 rows)
- Columns: shipment_id, transport_mode, distance_miles, delivery_time_hours, status
- **Data Quality Issues**: Negative distances (impossible values)
- **Demo Scenarios**: Distance validation, delivery analysis, transport optimization

#### **`telecommunications/`** - Network Performance Data
- `data.csv` - Network metrics and service quality (480 rows)
- Columns: network_id, service_type, bandwidth_mbps, latency_ms, service_quality
- **Data Quality Issues**: Negative latency (impossible values)
- **Demo Scenarios**: Latency validation, bandwidth analysis, service quality monitoring

### Consumer & Services

#### **`retail/`** - Sales and Inventory Data
- `data.csv` - Retail performance and customer insights (440 rows)
- Columns: product_id, category, units_sold, unit_price, customer_rating
- **Data Quality Issues**: Negative unit prices (impossible values)
- **Demo Scenarios**: Price validation, sales analysis, customer rating tracking

#### **`media/`** - Content Performance Data
- `data.csv` - Digital content analytics and engagement (450 rows)
- Columns: content_id, content_type, views_count, engagement_rate, audience_category
- **Data Quality Issues**: Negative view counts (impossible values)
- **Demo Scenarios**: View validation, engagement analysis, audience segmentation

#### **`sports/`** - Athletic Performance Data
- `data.csv` - Sports analytics and training metrics (435 rows)
- Columns: athlete_id, sport, performance_score, training_hours, competition_level
- **Data Quality Issues**: Negative training hours (impossible values)
- **Demo Scenarios**: Training validation, performance analysis, competition level tracking

### Public & Academic

#### **`government/`** - Municipal Services Data
- `data.csv` - Public services and budget allocation (415 rows)
- Columns: service_id, department, budget_allocation, citizen_satisfaction, service_category
- **Data Quality Issues**: Negative budget allocations (impossible values)
- **Demo Scenarios**: Budget validation, satisfaction analysis, department performance

#### **`academic/`** - Educational Outcomes Data
- `data.csv` - Student performance and academic tracking (425 rows)
- Columns: student_id, major, gpa, credit_hours, graduation_status
- **Data Quality Issues**: Invalid GPA values (>4.0, negative, impossible values)
- **Demo Scenarios**: GPA validation, academic performance analysis, graduation tracking

#### **`environmental/`** - Monitoring Data
- `data.csv` - Environmental measurements and compliance (470 rows)
- Columns: monitoring_id, measurement_type, pollution_index, temperature_celsius, compliance_status
- **Data Quality Issues**: Negative pollution indices (impossible values)
- **Demo Scenarios**: Pollution validation, environmental analysis, compliance monitoring

### Special Demo Dataset

#### **`posit-demo/`** - R/Python Package Downloads
- `data.csv` - Package download analytics and version tracking (450 rows)
- Columns: package_name, download_date, daily_downloads, package_type, user_rating
- **Data Quality Issues**: Negative download counts, extreme outliers, zero downloads for popular packages
- **Demo Scenarios**: Download validation, package popularity analysis, version tracking
- **Includes**: Interactive Quarto report demonstrating data analysis workflows

---

**All datasets are designed to be:**
- **Small and manageable**: 400-500 rows, exactly 5 columns
- **Industry-relevant**: Realistic variables and relationships
- **Demo-ready**: Clear trends for visualization and analysis
- **Quality-focused**: Each contains obvious data quality issues for cleaning demonstrations
- **Synthetic**: No real names, companies, or sensitive information

**Perfect for showcasing:**
- Positron's data cleaning and validation capabilities
- Databot's data quality detection
- Interactive data visualization and analysis
- Real-world data processing workflows