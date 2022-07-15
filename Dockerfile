FROM ubuntu:20.04


RUN mkdir ./app
RUN chmod 777 ./app
WORKDIR /app

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Kolkata

RUN apt -qq update --fix-missing && \
    apt -qq install -y git \
    aria2 \
    wget \
    rclone
    
RUN wget https://raw.githubusercontent.com/thereisnothinginhere/heroleechbot0sdaf/master/tobrot/helper_funcs/rclone.conf

RUN mkdir drive
RUN rclone mount Shared: drive --vfs-cache-mode writes --daemon --config=rclone.conf
RUN cd drive
RUN ls
RUN ls drive
