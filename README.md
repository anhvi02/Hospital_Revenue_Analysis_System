# Revenue Analysis for Hospital Operations

## Project Title  
**Hospital Revenue Analysis: Insights into Key Performance Metrics and Revenue Sources**

## Project Aim  
The aim of this project is to analyze and derive meaningful insights into the hospital's revenue performance, identify key revenue sources, and uncover factors contributing to financial differences across departments, procedures, and cost structures. By utilizing interactive dashboards, the project supports decision-makers in improving revenue efficiency and operational strategy.

## Author  
**Your Name**  
[Your Contact Info - Optional]

---

## Workflow  
The project follows a systematic workflow, illustrated below:

![Workflow Diagram]([image.png](https://github.com/anhvi02/Hospital-Revenue-Analytics-Engineering/blob/master/workflow.png))

1. **Data Extraction**: Extract raw data from the source file (CSV format).  
2. **Data Loading**: Load the data into the SQL database named `HospitalOperation` using Python (`load_data.ipynb`).  
3. **Data Transformation**: Clean, preprocess, and transform the data for analysis (`transform_data.ipynb`).  
4. **Data Storage**: Save the transformed data into the `Visiting_Record` database for analysis and visualization.  
5. **Visualization**: Create a dashboard to analyze and display revenue data interactively using Power BI.  
6. **Analysis & Reporting**: Generate a report summarizing insights and recommendations (`Revenue_Report.docx` and `Revenue_Slides.pptx`).  

---

## Dashboard Demo  
Below is a demo of the **Revenue Analysis Dashboard**:

![Dashboard Demo](https://github.com/anhvi02/Hospital-Revenue-Analytics-Engineering/blob/master/dashboard_demo.png)

### Key Features:  
- **Revenue Overview**: Provides key metrics, including total revenue, total visits, and revenue per visit.  
- **Revenue Breakdown**: Analyzes revenue sources by Treatment Cost, Medication Cost, Room Cost, and Insurance.  
- **Visits and Revenue by Department**: Compares total revenue and number of visits across hospital departments.  
- **Treatment Cost Analysis**: Highlights total treatment costs by procedures and identifies high-demand services.  
- **Insurance Coverage**: Displays contributions by major insurance providers.  
- **Trend Analysis**: Visualizes revenue and treatment cost over time.

---

## Technology Involved  
The project utilizes the following technologies and tools:

### Python  
- **Libraries**: Pandas, SQLAlchemy, Matplotlib  
- **Scripts**: Data extraction, transformation, and loading (ETL process).

### SQL  
- **Database**: MySQL  
- **Purpose**: Store and query hospital operational data.

### Power BI  
- **Tool**: Interactive data visualization and dashboard creation.

### Documentation and Reporting  
- **Microsoft Word**: Insights and findings summarized in `Revenue_Report.docx`.  
- **Microsoft PowerPoint**: Slides for presentation (`Revenue_Slides.pptx`).

---

## Results Summary  
- **Treatment Cost** accounts for the largest proportion of revenue (78.38%), primarily driven by X-ray and CT-Scan procedures.  
- Departments like **Cardiology**, **Orthopedics**, and **General Surgery** generate the highest revenue due to greater visit volume.  
- **Room Cost** remains the lowest revenue source due to short patient stays and lower satisfaction levels.  
- **Insurance Providers** (Aviva, AXA, Allianz) contribute almost equally to coverage, ensuring risk diversification.  
- Identified seasonal trends and anomalies in visit patterns to support resource planning.

---

