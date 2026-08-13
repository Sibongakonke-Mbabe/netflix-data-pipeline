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