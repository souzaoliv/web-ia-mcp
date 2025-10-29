FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt /app/

# Instala todas as dependências Python
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

#Para biuldar o container docker build -t django_app . 

#Para rodar o container docker run -p 8000:8000 django_app 