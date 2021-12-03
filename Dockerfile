# With jupyter fb-prophet

# Set base image
FROM jupyter/scipy-notebook:ubuntu-20.04

USER root
RUN apt update && apt -y install build-essential && rm -rf /var/lib/apt/lists/*

USER jovyan
# Copy the dependencies file to the working directory
COPY python/requirements.txt .

# Install dependencies
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple --no-cache-dir -r requirements.txt

# Copy the content of the python directory to the working directory
COPY python/ .