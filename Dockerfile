FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y \
    python3 \
    python3-pip \
    git
RUN apt-get install ffmpeg libsm6 libxext6  -y
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install \
    gradio

RUN git clone https://github.com/xinntao/Real-ESRGAN.git
WORKDIR /Real-ESRGAN
RUN python3 -m pip install \
    basicsr \
    facexlib \
    gfpgan
RUN python3 -m pip install -r requirements.txt
RUN python3 setup.py develop
