FROM python:3.7

ADD setup.py /
RUN pip install -r setup.py

COPY . /app
WORKDIR /app

CMD [ "python", "./webscraping_example.py" ]