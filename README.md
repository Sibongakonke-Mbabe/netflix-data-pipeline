# 🎬 Netflix Data Pipeline

![GitHub last commit](https://img.shields.io/github/last-commit/Sibongakonke-Mbabe/netflix-data-pipeline)
![GitHub repo size](https://img.shields.io/github/repo-size/Sibongakonke-Mbabe/netflix-data-pipeline)
![GitHub issues](https://img.shields.io/github/issues/Sibongakonke-Mbabe/netflix-data-pipeline)
![Python](https://img.shields.io/badge/Python-3.x-blue)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-16-blue)
![Docker](https://img.shields.io/badge/Docker-Containerized-2496ED?logo=docker&logoColor=white)
![Status](https://img.shields.io/badge/Status-Work%20In%20Progress-yellow)

An end-to-end **Data Engineering** project that demonstrates how to build a modern ETL (Extract, Transform, Load) pipeline using **Docker**, **PostgreSQL**, **Python**, **Pandas/Apache Spark**, and **Metabase**.

This repository is being developed incrementally as part of my Data Engineering learning journey at **WeThinkCode_**.

---

# 📖 Table of Contents

- Project Overview
- Objectives
- Tech Stack
- Architecture
- Project Structure
- Development Roadmap
- Current Progress
- Getting Started
- Learning Journey
- Future Improvements
- License

---

# 📌 Project Overview

The goal of this project is to simulate a real-world data engineering workflow by building a complete pipeline that:

- Extracts movie ratings from CSV datasets
- Cleans and transforms the data
- Loads the processed data into PostgreSQL
- Performs SQL analysis
- Visualizes insights using Metabase

Rather than building everything at once, this project grows as I learn new technologies and concepts through coursework and practical implementation.

---

# 🎯 Objectives

- Learn Docker and containerization
- Learn relational database design
- Learn SQL
- Build ETL pipelines
- Work with PostgreSQL
- Process datasets using Python
- Learn Pandas
- Learn Apache Spark
- Create dashboards with Metabase
- Apply software engineering best practices
- Document the learning journey

---

# 🛠 Tech Stack

| Technology | Purpose |
|------------|----------|
| Docker | Containerization |
| Docker Compose | Multi-container management |
| PostgreSQL | Relational Database |
| pgAdmin | Database Administration |
| Python | ETL Development |
| Pandas | Data Cleaning & Transformation |
| Apache Spark | Large-scale Data Processing *(planned)* |
| Metabase | Business Intelligence Dashboard *(planned)* |
| Git & GitHub | Version Control |

---

# 🏗 Architecture

```text
                  Movie Ratings CSV
                          │
                          │
                    Extract (Python)
                          │
                          ▼
                 Data Cleaning (Pandas)
                          │
                          │
                    Transform Data
                          │
                          ▼
                  PostgreSQL Database
                          │
                    SQL Analytics
                          │
                          ▼
                 Metabase Dashboard
```

---

# 📂 Project Structure

```text
netflix-data-pipeline/
│
├── .github/
│   └── workflows/
│
├── data/
│   ├── raw/
│   ├── processed/
│   └── sample/
│
├── database/
│   ├── init/
│   └── migrations/
│
├── docker/
│   ├── postgres/
│   ├── adminer/
│   └── metabase/
│
├── docs/
│   ├── architecture.md
│   ├── setup.md
│   └── learning-notes.md
│
├── notebooks/
│
├── scripts/
│   ├── extract/
│   ├── transform/
│   └── load/
│
├── src/
│   ├── config/
│   ├── database/
│   ├── etl/
│   └── utils/
│
├── sql/
│   ├── schema.sql
│   ├── queries.sql
│   └── views.sql
│
├── tests/
│
├── docker-compose.yml
├── requirements.txt
├── README.md
└── LICENSE
```

---

# 📁 Folder Explanations

| Folder | Purpose |
|---------|----------|
| data | Stores raw and processed datasets |
| database | Database initialization and migrations |
| docker | Docker configuration files |
| docs | Project documentation |
| notebooks | Data exploration using Jupyter |
| scripts | ETL scripts |
| src | Main application source code |
| sql | Database schema and SQL queries |
| tests | Unit and integration tests |

---

# 🗺 Development Roadmap

## Phase 1 — Project Setup ✅

- [x] Create GitHub repository
- [x] Create project structure
- [x] Configure Docker Compose
- [x] PostgreSQL container
- [x] Adminer container

---

## Phase 2 — Database

- [ ] Learn SQL
- [ ] Design database schema
- [ ] Create tables
- [ ] Add relationships
- [ ] Create indexes

---

## Phase 3 — ETL Pipeline

- [ ] Read CSV files
- [ ] Clean missing values
- [ ] Transform data
- [ ] Load into PostgreSQL

---

## Phase 4 — Analytics

- [ ] SQL reporting
- [ ] Aggregate movie statistics
- [ ] Top-rated movies
- [ ] Most rated genres

---

## Phase 5 — Dashboard

- [ ] Connect Metabase
- [ ] Create dashboards
- [ ] Publish analytics

---

## Phase 6 — Advanced Data Engineering

- [ ] Apache Spark
- [ ] Pipeline optimization
- [ ] Logging
- [ ] Configuration management
- [ ] Automated ETL

---

# 🚀 Current Progress

### Completed

- Git repository created
- Initial project structure
- Docker (Docker Compose and Docker Desktop)

### Currently Learning

- IBM Data Engineering for Everyone
- IBM Relational Database Management Systems
- SQL
- PostgreSQL


### Next Step

Design the PostgreSQL database schema.

---

# ⚙ Getting Started

## Clone the repository

```bash
git clone https://github.com/Sibongakonke-Mbabe/netflix-data-pipeline.git
```

---

## Move into the project

```bash
cd netflix-data-pipeline
```

---

## Start Docker

```bash
docker compose up -d
```

---

## Open Adminer

```
http://localhost:5050
```

Example connection:

| Field | Value |
|--------|-------|
| System | PostgreSQL |
| Server | postgres |
| Username | postgres |
| Password | postgres |
| Database | postgres |

---

# 📚 Learning Journey

This repository is intentionally developed over time.

Instead of uploading a finished project, each commit represents a new concept or skill learned through coursework and hands-on practice.

Examples include:

- Docker
- SQL
- PostgreSQL
- Python
- Pandas
- Apache Spark
- Data Warehousing
- ETL
- Data Visualization

---

# 💡 Future Improvements

- Scheduled ETL jobs
- Incremental data loading
- Data validation
- Logging
- Unit tests
- CI/CD with GitHub Actions
- Cloud deployment
- Data quality monitoring

---

# 🤝 Contributing

This is currently a personal learning project.

Suggestions and feedback are always welcome.

---

# 📄 License

This project is licensed under the MIT License.

---

## 👨‍💻 Author

**Sibongakonke Mbabe**

WeThinkCode_ Student

Aspiring Data Engineer


## WeThinkCode Verification.
WTC-5FNRDE5M


