# Stage 1: Base
FROM nvidia/cuda:12.4.1-cudnn-devel-ubuntu22.04 AS base

SHELL ["/bin/bash", "-o", "pipefail", "-c"]
ENV DEBIAN_FRONTEND=noninteractive \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=on \
    SHELL=/bin/bash

# Install Ubuntu packages
ARG PYTHON_VERSION
RUN apt update && \
    apt -y upgrade && \
    apt install -y --no-install-recommends \
        software-properties-common && \
    add-apt-repository ppa:deadsnakes/ppa && \
    apt update && \
    apt install -y --no-install-recommends \
        build-essential \
        python${PYTHON_VERSION} \
        python${PYTHON_VERSION}-venv \
        python${PYTHON_VERSION}-dev \
        python${PYTHON_VERSION}-tk \
        nginx \
        bash \
        dos2unix \
        git \
        ncdu \
        net-tools \
        dnsutils \
        inetutils-ping \
        openssh-server \
        libglib2.0-0 \
        libsm6 \
        libgl1 \
        libxrender1 \
        libxext6 \
        ffmpeg \
        wget \
        curl \
        psmisc \
        rsync \
        vim \
        zip \
        unzip \
        htop \
        screen \
        tmux \
        aria2 \
        cron \
        pkg-config \
        libcairo2-dev \
        libgoogle-perftools4 \
        libtcmalloc-minimal4 \
        apt-transport-https \
        ca-certificates && \
    update-ca-certificates && \
    apt clean && \
    rm -rf /var/lib/apt/lists/* && \
    echo "en_US.UTF-8 UTF-8" > /etc/locale.gen

# Set Python
RUN ln -s /usr/bin/python${PYTHON_VERSION} /usr/bin/python

# Install pip
RUN curl -sS https://bootstrap.pypa.io/get-pip.py | python${PYTHON_VERSION} && \
    python${PYTHON_VERSION} -m pip install --upgrade --no-cache-dir pip && \
    rm -f /usr/bin/pip3 && \
    ln -s /usr/local/bin/pip3 /usr/bin/pip3

# Stage 2: Install FaceFusion and python modules
FROM base AS setup

# Install FaceFusion
WORKDIR /
ARG FACEFUSION_VERSION
ARG FACEFUSION_CUDA_VERSION
ARG PYTHON_VERSION
ARG INDEX_URL
ARG TORCH_VERSION
ENV TORCH_INDEX_URL=${INDEX_URL}
ENV TORCH_COMMAND="pip3 install torch==${TORCH_VERSION} torchvision --index-url ${TORCH_INDEX_URL}"
COPY --chmod=755 ../../build/install.sh /install.sh
RUN /install.sh && rm /install.sh

# Install apps
ARG RUNPODCTL_VERSION
COPY ../../code-server/vsix/*.vsix /tmp/
COPY ../../code-server/settings.json /root/.local/share/code-server/User/settings.json
COPY --chmod=755 ../../build/apps.sh /apps.sh
RUN /apps.sh && rm /apps.sh

# Remove existing SSH host keys
RUN rm -f /etc/ssh/ssh_host_*

# NGINX Proxy
COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/502.html /usr/share/nginx/html/502.html

# Set template version
ARG RELEASE
ENV TEMPLATE_VERSION=${RELEASE}

# Copy the scripts
WORKDIR /
COPY --chmod=755 scripts/* ./

# Start the container
SHELL ["/bin/bash", "--login", "-c"]
CMD [ "/start.sh" ]
