FROM ubuntu:20.04

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
 && DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends \
        ca-certificates \
        curl \
        tar \
        build-essential \
        automake \
        libpcre3-dev \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

ENV SWIG_VERSION=4.0.2

RUN mkdir -p /tmp/swig \
 && cd /tmp/swig \
 && curl --fail -L -o swig.tar.gz "http://downloads.sourceforge.net/project/swig/swig/swig-${SWIG_VERSION}/swig-${SWIG_VERSION}.tar.gz" \
 && tar xf swig.tar.gz \
 && cd "swig-${SWIG_VERSION}" \
 && ./autogen.sh \
 && ./configure \
 && make -j4 \
 && make install \
 && cd / \
 && rm -r /tmp/swig

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
 && DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends \
        python3 \
        python3-dev \
        python3-pip \
        python3-venv \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

