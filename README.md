# Inception

[![Shell](https://img.shields.io/badge/language-shell-blue.svg)](https://www.gnu.org/software/bash/)
[![Docker](https://img.shields.io/badge/container-docker-blue.svg)](https://www.docker.com/)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)

## Overview

**Inception** is a project that leverages Docker to build a scalable, modular, and production-like development environment using containers. The project automates the setup of multiple services, orchestrated via Docker Compose, which are configured using Shell scripts, Dockerfiles, and Makefiles.

## Features

- **Containerized Architecture:** Isolates each service in its own container for easier management and scalability.
- **Automated Deployment:** Uses Makefiles and shell scripts to streamline building, running, and managing containers.
- **Multi-Service Stack:** Integrates various services (such as web server, database, etc.) defined in Docker Compose.
- **Customizability:** Easily configurable environment variables and service definitions.
- **Beginner Friendly:** Clear structure and scripts to help users understand Docker-based development.

## Project Structure

```
.
├── docker-compose.yml
├── srcs/
│   ├── requirements/
│   │   ├── nginx/
│   │   ├── wordpress/
│   │   └── ...
├── Makefile
├── scripts/
│   └── ...
└── README.md
```

- `docker-compose.yml`: Main Docker Compose configuration.
- `srcs/requirements/`: Service-specific Dockerfiles and configuration.
- `Makefile`: Useful commands to build, start, stop, and clean the environment.
- `scripts/`: Automation scripts (e.g., for setup and configuration).

## Getting Started

### Prerequisites

- [Docker](https://www.docker.com/get-started) (v20.10+)
- [Docker Compose](https://docs.docker.com/compose/) (v1.29+)
- GNU Make (optional, for using Makefile commands)

### Setup

1. **Clone the repository:**
   ```sh
   git clone https://github.com/N1ghtm4reee/inception.git
   cd inception
   ```

2. **Copy and edit the environment file (if required):**
   ```sh
   cp .env.example .env
   # Edit .env to customize environment variables
   ```

3. **Build and start the services:**
   - Using Makefile:
     ```sh
     make up
     ```
   - Or directly with Docker Compose:
     ```sh
     docker-compose up --build -d
     ```

4. **Access Services:**
   - Web server: [http://localhost/](http://localhost/)
   - Other services as defined in `docker-compose.yml`

5. **Stop and clean up:**
   ```sh
   make down
   # or
   docker-compose down
   ```

## Usage

- Edit service configurations under `srcs/requirements/`.
- Add custom scripts in `scripts/` for automation.
- Use `Makefile` targets for common tasks:
  - `make up` - Build and run all containers.
  - `make down` - Stop and remove all containers.
  - `make clean` - Remove all generated data and images.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for suggestions, improvements, or bug fixes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgements

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- [GNU Make](https://www.gnu.org/software/make/)
