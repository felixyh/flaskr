FROM python:slim

RUN useradd flaskr

WORKDIR /home/flaskr

COPY requirements.txt requirements.txt
RUN python -m venv venv
RUN venv/bin/pip install -r requirements.txt
RUN venv/bin/pip install gunicorn

COPY flaskr flaskr
COPY flaskr.py boot.sh ./
RUN chmod +x boot.sh

ENV FLASK_APP flaskr.py

RUN chown -R flaskr:flaskr ./
USER flaskr

EXPOSE 5000
ENTRYPOINT [ "./boot.sh" ]