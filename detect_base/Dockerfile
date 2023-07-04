FROM nvidia/cuda:12.2.0-base-ubuntu20.04
WORKDIR /home
COPY requirements.txt ./requirements.txt
RUN  apt-get update && apt-get install ffmpeg libsm6 libxext6  -y
RUN  apt install python3-pip -y
RUN  pip3 install -r requirements.txt
# some day i will include these 3 below in requirements.txt, some day
# perhaps i will add it some day
RUN  pip3 install flask
RUN  pip3 install waitress
RUN  pip3 install chardet
