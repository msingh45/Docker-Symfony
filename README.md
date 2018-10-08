# Symfony Dev Environment - Docker Compose
## Arizona State University

A Docker-Compose file that creates a local development environment for Symfony, a PHP framework utilized in many different platforms (including Drupal 8)

More information can be found here:
https://symfony.com/

### Setup instructions:

**1. Download and install docker**
   Go to the [Docker website](https://www.docker.com/) and install Docker for your respective operating system

**2. Download the *docker-compose.yml* included in this repository**

**3. Navigate to the directory holding the file and run the command `docker-compose up --build`**

**4. Navigate to *http://localhost:8000***

   For further details on developing with Symfony 3.4, consult [Symfony's official documentation](https://symfony.com/doc/3.4/page_creation.html)

   **- Note on installing database**

   Use the following information when prompted for database connection details:

| Property      | Value          |
| ------------- |-------------|
| Database Type      | PostgreSQL |
| Database Name      | `postgres`      |
| Username | `postgres`      |
| Password | `password`     |
| Database Host | `db`      |
| Database Port | *Leave Blank*      |
| Table Prefix | *Leave Blank*     |

### Usage:

**To start running Symfony:**

  `docker-compose start`

**To stop running Symfony:**

  `docker-compose stop`

**To remove Symfony container (including all databases and network configurations):**

  `docker-compose down`
