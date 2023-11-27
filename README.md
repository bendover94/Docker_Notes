# Install Docker in Ubuntu

```bash
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
```

## Install packages

```bash
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

## Test installation
```bash
sudo docker run hello-world
```

## Add to group
```bash
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
reboot
```

## Clone Repo

https://github.com/TW-Robotics/Docker-ROS/tree/mre2_ear_ws2023

## Navigate to `Docker-Ros` (previously cloned repo) and change branch
```bash
git checkout mre2_ear_ws2023
git branch
```

## Build container
```bash
docker build -t "fhtw/ros-noetic:latest" --rm .
```

## Run container
```bash
bash run_docker_from_local_build.sh
```

<br>

---
---

<br>

# Install Docker in Windows

- [install docker desktop (windows)](https://docs.docker.com/desktop/install/windows-install/)

- [install xserver](https://sourceforge.net/projects/vcxsrv/files/latest/download)
- [check readme for settings](https://github.com/TW-Robotics/Docker-ROS)
- Docker Desktop starten und anmelden in Powershell:
```powershell
git clone https://github.com/TW-Robotics/Docker-ROS.git
cd Docker-ROS
git checkout mre2_ear_ws2023
Get-Content Dockerfile | docker build -
```
- Doppelklick auf `run_docker_from_local_build.bat`
- Den Link mit labtoken anklicken

## (Optional)
Verwenden von `RunContainer.bat`