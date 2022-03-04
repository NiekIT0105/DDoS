# Base image
FROM python:alpine

COPY *.py /nwu/
COPY requirements.txt /nwu/

WORKDIR /nwu
RUN pip install -r requirements.txt

ENTRYPOINT ["python", "/nwu/attack.py"]
