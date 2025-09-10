# 🦠 COVID-19 Data Dashboard

A practice project to **clean, analyze, and visualize COVID-19 data** using **SQL** and **Google Sheets**.  

---

## 📊 Dataset
- **Source:** [Our World in Data – COVID-19](https://github.com/owid/covid-19-data)  
- **Direct CSV:** [owid-covid-data.csv](https://covid.ourworldindata.org/data/owid-covid-data.csv)  
- **Description:** Daily COVID-19 data on cases, deaths, vaccinations, and population for all countries and regions.  

---

## 🛠️ Tools Used
- **SQLite / SQLite Online** → Import, clean, and query data  
- **SQL** → Data cleaning & analysis  
- **Google Sheets / Excel** → Pivot tables & dashboard visualization  
- **GitHub** → Project versioning and portfolio showcase  

---

## 🔑 Key Analysis
- 📈 Global trends in new cases over time  
- 🏥 Daily cases & deaths by country  
- 💉 Vaccination progress compared to population  
- ⚰️ Mortality rate (deaths per reported cases)  
- 🌍 Top 10 most affected countries by total cases  

---

## 📈 Dashboard Preview
- 📊 [View the Dashboard (Google Sheets)](https://docs.google.com/spreadsheets/d/17CPZ-7DM4y4v5rDIuVh5YKz7eC9bcF_QDcbYN7O9lTA/edit?usp=sharing)  
- ⬇️ Or download the Excel export: `reports/covid19_dashboard.xlsx`  
- 🖼️ A preview screenshot is included in `reports/dashboard_screenshot.png`  

The dashboard includes:  
- Line charts → Daily new cases & deaths  
- Bar charts → Vaccination progress  
- Map chart → Mortality rates by country  
- Rankings → Top affected countries  

---

## 🚀 How to Reproduce
1. **Get the Data**  
   - Download [owid-covid-data.csv](https://raw.githubusercontent.com/owid/covid-19-data/master/public/data/owid-covid-data.csv)
   - Or use the copy included in this repo under `/data/owid-covid-data.csv`
   - Place it in the `data/` folder  

2. **Load into SQL**  
   - Use [SQLite Online](https://sqliteonline.com/) (no install needed)  
   - Import the CSV as `covid19_raw`

3. **Run SQL Scripts** (see `sql/` folder)  
   - `create_table.sql` → Create schema  
   - `cleaning.sql` → Clean and format data  
   - `analysis.sql` → Generate insights  
   - `dashboard_queries.sql` → Prepare data for charts  

4. **Export Results**  
   - Save query outputs as CSV  
   - Import into Google Sheets / Excel  

5. **Build Dashboard**  
   - Create charts (line, bar, geo, rankings)  
   - Assemble into a dashboard layout (see `/reports/` for example)  

---

## 📜 License
- Licensed under the **MIT License** – free to use and modify.  
- Data provided by **Our World in Data**.  

---
