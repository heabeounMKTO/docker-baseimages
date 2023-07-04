FROM nvidia/cuda:12.2.0-base-ubuntu20.04
WORKDIR /home
COPY requirements.txt ./requirements.txt
RUN  apt-get update && apt-get install ffmpeg libsm6 libxext6  -y
RUN  apt install python3-pip -y
ARG CACHE 
RUN  if [ "$CACHE" = "true" ] ; then echo "installing python packages with cache"; pip3 install -r requirements.txt; else echo "installing python packages without cache "; pip3 install --no-cache-dir -r requirements.txt; fi


