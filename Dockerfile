FROM python:3.7-slim
WORKDIR /app
COPY requirements.txt requirements.txt
ENV FLASK_APP=app.py
RUN pip3 install -r requirements.txt
COPY . .
CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]