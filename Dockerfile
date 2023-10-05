FROM ubuntu:20.04
FROM python:3.7.12

ADD yolact_cpu .

RUN apt-get update && apt-get -y install libgl1-mesa-glx
RUN apt-get install -y wget
RUN apt-get install -y git


RUN python3.7 -m venv yolact
RUN . yolact/bin/activate && pip install torch==1.7.1+cpu torchvision==0.8.2+cpu torchaudio==0.7.2 -f https://download.pytorch.org/whl/torch_stable.html && \
    pip install cython && \
    pip install opencv-python pillow pycocotools matplotlib && \
    pip install gdown


COPY entrypoint.sh .
COPY test.py .

RUN chmod +x entrypoint.sh

ENTRYPOINT ./entrypoint.sh