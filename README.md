# jenkins-get-started

<image src="doc/arch.png" width=1000 center>

 [<img src="https://img.shields.io/badge/Python-3.11.7-yellow.svg?logo=python">](https://hub.docker.com/r/hadolint/hadolint) 
[<img src="https://img.shields.io/badge/Jenkins-lts--jdk17-red.svg?logo=jenkins">]()   [<img src="https://img.shields.io/badge/Docker-v20.10.22-blue.svg?logo=docker">](https://www.docker.com/)           [<img src="https://img.shields.io/badge/Docker--compose-v2.15.1-blue.svg?logo=docker">](https://www.docker.com/)
[<img src="https://img.shields.io/badge/alpine/socat-latest-white.svg?logo=docker">](https://hub.docker.com/r/prom/prometheus/tags)
[<img src="https://img.shields.io/badge/prometheus-latest-orange.svg?logo=prometheus">](https://hub.docker.com/r/grafana/grafana/tags)   [<img src="https://img.shields.io/badge/grafana-latest-orange.svg?logo=grafana">](https://hub.docker.com/r/grafana/grafana/tags)


---
---
## 1. Project's purpose : 

The aim of this project is the building of an orchestration pipeline (Build-Test-Deploy). For that, we need the following tools:

- **Jenkins** : for creation of the orchestration pipeline
- **Docker** : for creation of containers
- **Docker-compose** : for containers orchestration
- **Prometheus** : for monitoring (metrics scraping)
- **Grafana** : for metrics visualization
- **Socat** : for redirecting TCP connections between the Docker host and the Jenkins container
- **Python** : for creation of the application which will be handle by Jenkins for Building, Testing and Deployment

<br/>

---
## 2. Repository structure :

The repository is structured as follows:

- **grafana-volumes** : contains the directories which persist the data for Grafana
- **jenkins-volumes** : contains the directories which persist the data for Jenkins
- **prometheus-volumes** : contains the directories which persist the data for Prometheus
- **requirements.txt** : contains the list of required python packages
- **Dockerfile** : contains the instruction for building the webapp Docker image
- **docker-compose.yaml** : contains the configuration for the containers orchestration
- **Makefile** : contains the commands for automating the project execution