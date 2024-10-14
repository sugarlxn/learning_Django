FROM ubuntu:focal

# setup lable
LABEL maintainer="lxn12345"
LABEL version="1.0"
LABEL description="This is a dockerfile for building a container with python3 to imployment Django project"

# Set the locale
ENV LANG C.UTF-8
# work dir
WORKDIR /root
# non-interactive
ENV DEBIAN_FRONTEND=noninteractive


# install some basic tools
RUN cp -a /etc/apt/sources.list /etc/apt/sources.list.bak && \
    sed -i "s@http://.*archive.ubuntu.com@http://mirrors.huaweicloud.com@g" /etc/apt/sources.list && \
    sed -i "s@http://.*security.ubuntu.com@http://mirrors.huaweicloud.com@g" /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y --no-install-recommends build-essential && \
    apt-get install -y --no-install-recommends python3 && \
    apt-get install -y --no-install-recommends python3-pip && \
    python3 -m pip install -i https://mirrors.tuna.tsinghua.edu.cn/pypi/web/simple --upgrade pip && \
    pip config set global.index-url https://mirrors.tuna.tsinghua.edu.cn/pypi/web/simple && \
    pip install numpy && \
    pip install Django


# CMD
CMD ["/bin/bash"]
