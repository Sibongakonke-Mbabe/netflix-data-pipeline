# Day 1 — Project Setup

## Date: 07 August 2026

## What I worked on
- Created the initial GitHub repository for the Netflix Data Engineering Pipeline project.
- Created the initial project folder structure for the pipeline.
- Set up Docker Compose for running the project's services.
- Created a PostgreSQL container to act as the project's database.
- Initially used Adminer as the database GUI.
- Created a connection between the database and the GUI through Docker Compose.
- Created the initial project documentation and README.
- What I learned
- Docker containers: Containers allow different services, such as PostgreSQL and database management tools, to run in isolated environments.
- Docker Compose: Docker Compose allows multiple containers/services to be defined and managed together in a single YAML configuration file.
- PostgreSQL: PostgreSQL will be used as the relational database for storing the processed Netflix data.
- Volumes: Docker volumes allow database data to persist even when a container is stopped or recreated.
- Ports: Learned the difference between a host port and a container port, for example 5433:5432.
- Docker networking: Services in the same Docker Compose project can communicate using their service names.
- Database GUI: Adminer can be used as a lightweight interface for interacting with PostgreSQL.

## What I learned
- **Docker containers**: Containers allow different services, such as PostgreSQL and database management tools, to run in isolated environments.
- **Docker Compose**: Docker Compose allows multiple containers/services to be defined and managed together in a single YAML configuration file.
- **PostgreSQL**: PostgreSQL will be used as the relational database for storing the processed Netflix data.
- **Volumes**: Docker volumes allow database data to persist even when a container is stopped or recreated.
- **Ports**: Learned the difference between a host port and a container port, for example 5433:5432.
- **Docker networking**: Services in the same Docker Compose project can communicate using their service names.
- **Database GUI**: Adminer can be used as a lightweight interface for interacting with PostgreSQL.

---




# Day 2 — PostgreSQL, pgAdmin & Environment Variables

## Date: 13 August 2026

## What I worked on

- Replaced Adminer with pgAdmin as the PostgreSQL database management GUI.
- Updated the Docker Compose configuration to run pgAdmin alongside PostgreSQL.
- Connected pgAdmin to the PostgreSQL container through the Docker Compose network.
- Learned how to use the PostgreSQL service name (postgres-db) when connecting between Docker containers.
- Created a .env file to store database and pgAdmin credentials.
- Updated docker-compose.yml to read credentials from environment variables instead of hard-coding them.
- Added .env to .gitignore to prevent credentials from being committed to GitHub.
- Created a .env.example file containing placeholder variables so the required configuration is documented without exposing real credentials.
- Added the first progress/learning notes that I had initially forgotten to document.

## What I learned

- **pgAdmin**: pgAdmin provides a more PostgreSQL-focused GUI for managing databases, tables, schemas and SQL queries.
- **Environment variables**: Sensitive configuration such as usernames and passwords can be stored outside the Docker Compose configuration.
- **.env files**: .env files can provide environment variables to Docker Compose.
- **.gitignore**: .gitignore prevents sensitive or unnecessary files from being tracked by Git.
- **.env.example**: An example environment file documents which variables are required without exposing actual credentials.
- **Docker service networking**: pgAdmin can connect to PostgreSQL using postgres-db:5432 because both services are running within the same Docker Compose network.
- **Persistence**: PostgreSQL data is stored in a Docker volume, meaning the database data can survive container recreation.
- **Configuration vs application**: I learned that credentials and other environment-specific settings should be separated from the main application/infrastructure configuration.

---



# Day 3 — IBM Data Engineering Basics for Everyone: Modules 1 & 2

**Date:** 4 September 2026

## What I worked on

- Continued studying the IBM **Data Engineering Basics for Everyone** course on edX.
- Completed **Module 1: What is Data Engineering?**
- Completed **Module 2: The Data Engineering Ecosystem**.
- Completed and passed all practice quizzes and graded quizzes for both modules.
- Learned more about the role of Data Engineers and how they work with other data professionals.
- Studied the different components that make up a modern data engineering ecosystem.
- Learned about data sources, data repositories, ETL/ELT processes, data pipelines, and Big Data technologies.
- Gained a better understanding of how the technologies planned for this project fit into a real Data Engineering workflow.

## What I learned

### Module 1 — What is Data Engineering?

- **Data Engineering:** Data Engineering involves collecting, integrating, transforming, storing, and making data available for analysis and other downstream uses.
- **Data ecosystem:** A modern data ecosystem consists of data sources, repositories, integration tools, pipelines, analytics platforms, and BI/reporting tools.
- **Data Engineer:** Data Engineers build and maintain the systems and pipelines used to collect, process, transform, and store data.
- **Data roles:** I learned the differences between Data Engineers, Data Scientists, Data Analysts, Business Analysts, and Business Intelligence Analysts.
- **Data Engineering lifecycle:** A typical lifecycle involves acquiring data, processing and transforming it, storing it in an appropriate repository, and making it available to consumers.
- **Responsibilities:** Data Engineers are responsible for areas such as data quality, reliability, scalability, performance, and maintaining data infrastructure.
- **Skills:** Important Data Engineering skills include SQL, programming, databases, data pipelines, operating systems, cloud technologies, and understanding data architecture.
- **Evolution of Data Engineering:** Data Engineering has evolved from traditional databases and data warehouses to include distributed systems, cloud platforms, data lakes, and Big Data technologies.

### Module 2 — The Data Engineering Ecosystem

- **Data types:** Data can be structured, semi-structured, or unstructured depending on how it is organized.
- **File formats:** Different formats such as CSV, JSON, and XML are used to store and exchange data depending on the use case.
- **Data sources:** Data can come from relational databases, flat files, APIs, web services, web scraping, streams, and feeds.
- **Metadata:** Metadata describes other data and helps users understand information such as its structure, meaning, source, and format.
- **Data repositories:** I learned about relational databases, NoSQL databases, data warehouses, data marts, and data lakes and the different purposes they serve.
- **RDBMS:** Relational Database Management Systems organize structured data into related tables and commonly use SQL. PostgreSQL, which I am using in this project, is an example of an RDBMS.
- **NoSQL:** NoSQL databases provide alternative ways of storing data when traditional relational structures are not suitable.
- **Data warehouses:** Data warehouses provide centralized repositories of processed data primarily for analytics and reporting.
- **Data marts:** Data marts contain smaller subsets of data focused on a particular department or business function.
- **Data lakes:** Data lakes can store large amounts of raw structured, semi-structured, and unstructured data.
- **Data pipelines:** A data pipeline moves data between systems and can include different processing and transformation stages.
- **ETL:** Extract, Transform, Load means data is extracted from a source, transformed, and then loaded into the destination.
- **ELT:** Extract, Load, Transform means data is loaded into the destination before transformations are performed.
- **Big Data:** Big Data refers to datasets whose size, speed, or complexity require technologies beyond traditional data processing approaches.
- **Apache Hadoop:** Hadoop provides distributed storage and processing capabilities for large datasets.
- **HDFS:** Hadoop Distributed File System stores large datasets across multiple machines.
- **Apache Hive:** Hive provides data warehousing and SQL-like querying capabilities on top of Hadoop.
- **Apache Spark:** Spark is a distributed data processing framework used for large-scale and high-performance data processing and analytics.

## How this relates to my project

The two modules helped me better understand the architecture of the Netflix Data Pipeline and the purpose of each technology I plan to use:

- **CSV dataset** → Source of raw data.
- **Python/Pandas** → Extracting, cleaning, and transforming the data.
- **PostgreSQL** → Relational data repository for storing processed data.
- **SQL** → Querying and analysing the stored data.
- **Metabase** → BI and reporting layer for visualising insights.
- **Docker Compose** → Containerized environment for running the different services.
- **Apache Spark** → Planned future addition for learning distributed data processing.

I now understand that these are not simply separate technologies being connected together. Each one performs a specific role within the overall data engineering ecosystem and pipeline.

## Key Takeaway

Completing Modules 1 and 2 gave me a stronger theoretical foundation in Data Engineering. I now have a clearer understanding of how data moves from its original source through processing and storage systems before eventually being used for analytics and reporting. This has also helped me better understand the reasoning behind the architecture I originally selected for this project.