
---

# Computer Vision Project with Jupyter Notebook

This repository contains the necessary files and settings to set up a computer vision development environment using Jupyter Notebook within a Docker container.

## Prerequisites

To use this repository, you need to have [Docker](https://docs.docker.com/get-docker/) and [Docker Compose](https://docs.docker.com/compose/install/) installed on your machine.

## How to Use

1. Clone this repository to your local machine.

```bash
git clone https://github.com/your_username/your_repository.git
cd your_repository
```

2. Generate a Jupyter Notebook token.

For security reasons, Jupyter Notebook requires a token for authentication when accessed from a web browser. You can generate a token using Python's built-in `secrets` module:

```bash
python3 -c "import secrets; print(secrets.token_hex(32))"
```

This command will output a secure 64-character hexadecimal token. Copy this token as you will need it in the next step.

3. Configure the Jupyter Notebook token.

In the `docker-compose.yml` file, you will find the `environment` section for the `jupyter` service. Add the following line to set the `JUPYTER_TOKEN` environment variable:

```yaml
environment:
  - JUPYTER_TOKEN=your_token_here
```

Replace `your_token_here` with the token you generated in step 2.

4. Build and run the Docker container.

```bash
docker-compose up
```

This command builds a Docker image based on the provided Dockerfile and starts a container from that image. The image contains a preconfigured environment with Jupyter Notebook, tailored for computer vision projects.

5. Access the Jupyter Notebook.

After starting the container, you can access the Jupyter Notebook by navigating to `http://localhost:8888` in your web browser. When prompted for authentication, enter the token you generated earlier.

Please note that the Jupyter Notebook token is a security measure to prevent unauthorized access. Make sure to keep your token secure and do not share it publicly.
