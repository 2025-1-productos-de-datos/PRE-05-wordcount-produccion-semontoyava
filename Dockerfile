# docker build -t wordcount-app .
# docker run --rm -v "D:\Especializacion\Productos_de_datos\entorno\PRE-05-wordcount-produccion-semontoyava/data/input:/data/input/" -v "D:\Especializacion\Productos_de_datos\entorno\PRE-05-wordcount-produccion-semontoyava/data/output:/data/output/" wordcount-app
#
FROM python:3.11-slim
WORKDIR /app
COPY . .
RUN pip install -e .
# python3 -m homework data/input data/output
CMD ["python", "-m", "homework", "/data/input/", "/data/output/"]

# docker run --rm -v "$PWD/data/input:/data/input/" -v "$PWD/data/output:/data/output/" wordcount-app