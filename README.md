# NDE-docker
Build NDE custom module in a Docker environment.

## Prerequisites
- Docker Desktop installed and running on your machine
- Access to the terminal/command prompt

## Building and Running Instructions

### 1. Add the Custom Module
Add your custom module to the NDE-Docker folder and then place the Dockerfile inside your custom module.

The latest package can be found in this repo:
https://github.com/ExLibrisGroup/customModule

### 2. Build the Docker Image
Navigate to the project directory and run:
```bash
docker build -t nde-custom-module .
```

### 3. Run the Docker Container
After the build completes, start the container:
```bash
docker run -p 4201:4201 nde-custom-module
```

### 4. Access the Application
Once the container is running, access the application at:
```
{YOURNDEURL}&useLocalCustomPackage=true
```
OR

```
http://localhost:4201/{YOURNDEPARAMETERS}
```

## Troubleshooting
- If the build fails, try rebuilding with no cache:
  ```bash
  docker build --no-cache -t nde-custom-module .
  ```
- To stop the container, use Ctrl+C in the terminal or run:
  ```bash
  docker stop $(docker ps -q --filter ancestor=nde-custom-module)
  ```
- To view container logs:
  ```bash
  docker logs <container_id>
  ```


