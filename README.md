# PHP Blog Website

A simple PHP blog website with MySQL database.

## Docker Setup

This project includes a Docker Compose configuration for easy setup and development.

### Prerequisites

- Docker
- Docker Compose

### Running the Application

1. Clone this repository
2. Navigate to the project directory
3. Start the Docker containers:

```bash
docker-compose up -d
```

4. Access the application:
   - Website: http://localhost:8080
   - phpMyAdmin: http://localhost:8081 (user: blog_user, password: blog_password)

### Database Setup

The database is automatically initialized with the SQL script from the `_db/blog_db.sql` file when the containers start for the first time.

### Docker Services

- **php-app**: PHP 8.1 with Apache
- **db**: MySQL 8.0 database
- **phpmyadmin**: PHP MyAdmin for database management

### Stopping the Application

```bash
docker-compose down
```

To completely remove all data including the database volume:

```bash
docker-compose down -v
```
