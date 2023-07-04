FROM nvidia/cuda:12.2.0-base-ubuntu20.04
WORKDIR /home
COPY requirements.txt ./requirements.txt
RUN  apt-get update && apt-get install ffmpeg libsm6 libxext6  -y
RUN  apt install python3-pip -y
RUN  pip3 install --no-cache-dir -r requirements.txt

# remove pip as we do not need it anymore 
RUN apt-get update && apt-get install -y python3-minimal binutils && \
  rm -rf /usr/local/lib/python*/ensurepip && \
  rm -rf /usr/local/lib/python*/idlelib && \
  rm -rf /usr/local/lib/python*/distutils/command && \
  rm -rf /usr/local/lib/python*/lib2to2 && \
  rm -rf /usr/local/lib/python*/__pycache__/* && \
  find /usr/local/bin -not -name 'python*' \( -type f -o -type l \) -exec rm {} \;&& \
  rm -rf /usr/local/share/*

