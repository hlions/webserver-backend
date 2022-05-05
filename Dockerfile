FROM python:alpine3.15

WORKDIR webserverbackend

COPY . ./webserverbackend

RUN pip install -i https://mirrors.ustc.edu.cn/pypi/web/simple -r requirements.txt

EXPOSE 8000

CMD ["python", "manager.py", "runserver", "0.0.0.0:8000"]
