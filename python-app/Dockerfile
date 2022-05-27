FROM ubuntu:22.04
MAINTAINER Rajesh Kumar <rk90229@gmail.com>
RUN apt-get update -y \
  && apt-get install -y python3-pip python3-dev \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 install --upgrade pip \
  && apt-get -y install cron \
  && apt-get install -y python3-mysql.connector \
  && apt-get install -y mysql-server 

COPY speedtest-cron /etc/cron.d/speedtest-cron
RUN chmod 0644 /etc/cron.d/speedtest-cron
RUN crontab /etc/cron.d/speedtest-cron
RUN touch /var/log/cron.log
COPY . /app
WORKDIR /app
RUN chmod 0744 speedtest.py
RUN chmod 0744 speedtest-python.py
CMD ["cron","-f"]
