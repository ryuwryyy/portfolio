FROM tensorflow/tensorflow:1.10.1-py3
RUN mkdir /root/work
WORKDIR /root/work
RUN apt-get update

# set UTF8
RUN apt-get install locales
RUN echo "ja_JP UTF-8" > /etc/locale.gen
RUN locale-gen

RUN pip install opencv-python
RUN apt update && apt install -y libsm6 libxext6
RUN apt-get install -y libxrender-dev
RUN pip install Image
RUN pip install requests

ENV PYTHONPATH "/root/work:$PYTHONPATH"
ENV LANG=C.UTF-8

COPY src/ ./