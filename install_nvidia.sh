#!/bin/sh
# Install official NVIDIA driver package
sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
sudo sh -c 'echo "deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64 /" > /etc/apt/sources.list.d/cuda.list'
sudo apt-get update && sudo apt-get install -y --no-install-recommends linux-headers-generic dkms cuda-drivers

# Add the nvidia-docker 2.0 package repositories
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | \
  sudo apt-key add -
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | \
  sudo tee /etc/apt/sources.list.d/nvidia-docker.list
sudo apt-get update

#Install zip
sudo apt-get install zip
sudo apt-get install unzip

# Install nvidia-docker2 and reload the Docker daemon configuration
sudo apt-get install -y nvidia-docker2
sudo pkill -SIGHUP dockerd

# Test nvidia-smi with the latest official CUDA image
sudo docker run --runtime=nvidia --rm nvidia/cuda nvidia-smi

tar xvzf archive-name.tar.gz

# To run jupyter notebook run the following command 
sudo docker pull jetml/jupyter-python-3-gpu
# sudo docker run -it --rm -v $(realpath ~/):/tf/notebooks -p 8888:8888 tensorflow/tensorflow:latest-py3-jupyter

sudo nvidia-docker run -it -v $(realpath ~/):/notebooks -p 8888:8888 jetml/jupyter-python-3-gpu