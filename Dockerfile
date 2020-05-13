from python:3.8

COPY . /opt/app
WORKDIR /opt/app
#RUN pip --version
#RUN pip install -r requirements.txt
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install python3-pip
RUN pip install flask

EXPOSE 3001
CMD python ./app.py