FROM nvidia/cuda:12.2.0-base-ubuntu20.04
WORKDIR /home
COPY requirements.txt ./requirements.txt
RUN  apt-get update && apt-get install ffmpeg libsm6 libxext6  -y
RUN  apt install python3-pip -y
RUN  pip3 install --no-cache-dir -r requirements.txt


