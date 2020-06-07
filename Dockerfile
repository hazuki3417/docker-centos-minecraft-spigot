# Please execute the following command to build
# docker build -t [container_name] this_file_path

# Please execute the following command to start it
# docker run -itd --name [container_name] -p xx:xx [container_name]

# Please execute the following command to attach
# docker exec -it [container_name] /bin/bash

# ベースイメージを指定
FROM hazuki3417/centos:latest
# 制作者情報を指定
LABEL maintainer="hazuki3417 <hazuki3417@gmail.com>"

RUN : "Javaのパッケージをインストール" && \
	yum -y update && \
	yum -y install java

COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod 744 /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
