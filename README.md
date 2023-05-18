
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

2. Build the Docker image and start the container using Docker Compose.

```bash
docker-compose up
```

This command builds a Docker image based on the provided Dockerfile and starts a container from that image. The image contains a preconfigured environment with Jupyter Notebook, a popular tool for interactive development of computer vision code.

In addition, the command maps the local folder `/Users/myuser/Projects/computer_vision` to the directory `/home/jovyan/work` within the container. This allows you to work on your computer vision notebooks on your local system while still running them within the isolated container environment.

3. Access the computer vision development environment.

After starting the container, you can access the computer vision development environment by navigating to `localhost:8888` in your web browser. Here, you can create, edit, and run Jupyter notebooks, which are saved to the `/Users/myuser/Projects/computer_vision` folder on your local system due to volume mapping.

Please replace "myuser" with your actual username on macOS.
# docker-jupyter-computer-vision
