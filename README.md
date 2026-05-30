# Online Shop Data Warehousing and Business Intelligence Project

A complete **Data Warehousing and Business Intelligence (DWBI)** solution developed using the **Online Shop Customer Sales dataset**.

This project was completed as part of the DWBI module and demonstrates the full BI pipeline from source data extraction to data warehouse design, ETL implementation, OLAP cube analysis, Excel analysis, and Power BI dashboard reporting.

---

## Project Overview

This project demonstrates the implementation of a modern BI solution including:

* ETL development using **SQL Server Integration Services (SSIS)**
* Star schema data warehouse design
* Fact and dimension table creation
* Slowly Changing Dimension (SCD) handling
* Surrogate key implementation
* Accumulating fact table updates
* SSAS multidimensional cube creation
* OLAP analysis operations
* Excel PivotTable analysis
* Power BI dashboard development
* KPI cards, slicers, drill-through reports, and visual analytics

---

## Technologies Used

* SQL Server
* SQL Server Integration Services (SSIS)
* SQL Server Analysis Services (SSAS)
* SQL Server Management Studio (SSMS)
* Visual Studio / SQL Server Data Tools (SSDT)
* Power BI
* DAX
* Excel PivotTables
* ETL
* OLAP

---

## Features

### Data Warehouse

* Star schema implementation
* Fact and dimension tables
* Customer, Date, Browser, Payment, and Voucher dimensions
* Sales fact table implementation
* Slowly Changing Dimension handling
* Surrogate key implementation
* Data warehouse validation queries

### ETL Pipeline

* CSV source data extraction
* Data transformation and cleansing
* Lookup-based dimension loading
* Dimension table loading
* Fact table loading
* Slowly Changing Dimension package for customer data
* Accumulating fact table update package
* SSIS package execution and deployment files

### OLAP & Cube

* SSAS multidimensional cube development
* Cube deployment using Visual Studio
* Dimension and measure configuration
* Data Source View creation
* Hierarchies and dimensions
* Roll-up and drill-down analysis
* Slice and dice operations
* Excel-based OLAP analysis

### Power BI Analytics

* Interactive Power BI dashboard
* KPI cards and summary visuals
* Sales analysis reports
* Customer and payment-related analysis
* Drill-through reports
* Cascading slicers
* Visual analytics for business decision-making

---

## Dataset

The project uses an **Online Shop Customer Sales dataset**, which contains customer sales-related information used to design and implement the data warehouse and BI reports.

Main source files include:

* `Online Shop Customer Sales Data.csv`
* `Customer_source.csv`
* `lookup_data.xlsx`
* `fact_completion_updates.csv`
* `Sales_Record_Source.csv`

---

## Repository Structure

```text
DWBI-OnlineShop-Project/
│
├── dataset-info/       # Source datasets, lookup files, and data backups
├── docs/               # Assignment documents and reports
├── excel-olap/         # Excel PivotTable / OLAP analysis files
├── powerbi/            # Power BI dashboard file
├── screenshots/        # ER diagrams, star schema diagrams, and output screenshots
├── sql-scripts/        # SQL scripts for table creation and validation queries
├── ssas-cube/          # SSAS multidimensional cube project files
├── ssis-packages/      # SSIS ETL project and package files
├── .gitattributes
├── .gitignore
└── README.md
```

---

## Author

**Hirun Rajapaksha**





