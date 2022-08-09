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

RUN PWD

RUN rclone mount Shared: drive --vfs-cache-mode writes --daemon --config=rclone.conf
RUN rclone sync Shared:HeroBenHero/Cartoons/"Ben 10" Shared2:"Ben 10" --config=rclone.conf --drive-acknowledge-abuse
RUN rclone sync Shared:HeroBenHero/Cartoons/"Ben 10" OnedriveBusiness1:"Ben 10" --config=rclone.conf --drive-acknowledge-abuse
RUN rclone sync Shared:HeroBenHero/Cartoons/"Ben 10" OnedriveBusiness:"Ben 10" --config=rclone.conf --drive-acknowledge-abuse
