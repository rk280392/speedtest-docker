FROM  evalle777/flask-mysql
MAINTAINER Rajesh "rk90229@gmail.com"
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install --upgrade pip
COPY . /app
EXPOSE 5000
ENTRYPOINT ["python3"]
CMD ["app.py"]

