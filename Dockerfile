FROM ubuntu
MAINTAINER cnryb <cnryb@live.cn>
WORKDIR /app
EXPOSE 8000
COPY . /app/
RUN apt-get update && apt-get install -y \
    sqlite3 \
    python \
	python-pip \
	python-lxml \
	&& pip install requests chardet web.py sqlalchemy gevent psutil 

ENTRYPOINT ["python","/app/IPProxy.py"]