FROM python:3.8
LABEL authors="schnee"

COPY . /ApiCreation
WORKDIR /ApiCreation

# Upgrade pip to the latest version
RUN pip install --upgrade pip

RUN pip install -r requirements.txt

ENV FLASK_APP = "main.py" FLASK_ENV="local"

EXPOSE 5000

CMD ["python3", "-m" ,"flask", "run"]