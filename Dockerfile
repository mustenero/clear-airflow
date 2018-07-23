FROM alpine
MAINTAINER Inshava Nonton <mustenero@gmail.com>

RUN apk update && apk upgrade
RUN apk add python3 bash gcc gfortran linux-headers make musl-dev python-dev libxml2 libxml2-dev libxslt libxslt-dev cython-dev alpine-sdk py3-cffi py3-openssl python3-dev
RUN pip3 install --upgrade pip
RUN pip3 install apache-airflow
RUN export AIRFLOW_HOME=/tmp/airflow

#USER nobody
#WORKDIR /tmp

