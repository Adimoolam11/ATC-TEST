FROM python:3.6
COPY . /app
WORKDIR /app
ENV ATC_USERNAME=Admin
ENV ATC_PASSWORD=Admin@12345

RUN pip install Flask==1.1.2
RUN pip install click==7.1.2
RUN pip install itsdangerous==1.1.0
RUN pip install Jinja2==2.11.2
RUN pip install MarkupSafe==1.1.1
RUN pip install python-dotenv==0.14.0
RUN pip install Werkzeug==1.0.1
CMD ["python", "app.py"]