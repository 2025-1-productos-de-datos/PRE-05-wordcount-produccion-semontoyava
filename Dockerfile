# docker build -t wordcount-app 
# docker run--rm -v "$PWD/data/input:/data/input/" -v "$PWD/data/output:/data/output/" wordcount-app_ 
# 
FROM python:3.11-slim
WORKDIR /app
COPY . . #revisar
RUN pip install -e .
# python3 -m homework data/input data/output 
CMD ["python", "-m", "homework", "/data/input/", "/data/output/"] 
#docker run--rm -v "$PWD/data/input:/data/input/" -v "SPwD/data/output:/data/output/" wordcount-app