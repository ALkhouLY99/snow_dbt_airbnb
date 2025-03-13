# Building a Modern _Data Pipeline & Dashboard_ 
![snow_dbt](https://github.com/user-attachments/assets/3a9a634f-faeb-4469-b9b3-7402db1ef97f)

## Overview
This project implements a scalable data pipeline using modern data stack tools to handle data ingestion, transformation, orchestration, and visualization efficiently.
It integrates Dagster, Airbyte, Snowflake, dbt, and Apache Superset to ensure seamless data workflows.

## Technologies Used.
+ Dagster – Orchestrates the entire pipeline.
+ Airbyte – Extracts data from multiple sources.
+ Snowflake – Stores raw and transformed data.
+ dbt – Cleans, transforms, and models data.
+ Apache Superset – Provides interactive dashboards for visualization.

## Architecture.
The pipeline follows an ELT (Extract, Load, Transform) workflow orchestrated by Dagster:
- **Ingestion:** Data is extracted using Airbyte.
- **Storage & Transformation:** Raw data is stored in **Snowflake**.
- **dbt (Data Build Tool)** performs data transformations.
- **BI & Visualization:** Transformed data is visualized using Apache Superset.

## Pipeline Workflow.
+ 1️⃣- Ingestion: Airbyte extracts raw data from sources and loads it into Snowflake.
+ 2️⃣- Storage & Transformation: dbt transforms raw data into structured tables in Snowflake.
+ 3️⃣- Orchestration: Dagster schedules and automates the pipeline workflows.
+ 4️⃣- BI & Visualization: Apache Superset enables analytics and reporting on transformed data.

<p style="text-align: center; font-weight: bold;">-------------------- _dashboard preview & lineage graph_--------------------</p>

![Screenshot 2025-03-13 054757](https://github.com/user-attachments/assets/e536e33e-ed93-4228-a323-26c3fb490576)
![screenshot](https://github.com/user-attachments/assets/41f28f2f-e702-42f3-a96d-a7227d1e8e03)
