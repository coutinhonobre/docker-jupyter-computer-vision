# Use a imagem oficial do Python 3.9 como base
FROM python:3.9

# Defina as variáveis de ambiente para desativar a configuração interativa
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Sao_Paulo

# Mantenha o sistema operacional atualizado
RUN apt-get update -y && apt-get upgrade -y

# Instale os pacotes necessários
RUN apt-get install -y build-essential libsm6 libxext6 libxrender-dev git libgtk2.0-dev pkg-config

# Defina o diretório de trabalho
WORKDIR /app

# Instale quaisquer dependências necessárias
RUN pip3 install --upgrade pip
RUN pip3 install opencv-python
RUN pip3 install opencv-python-headless
RUN pip3 install notebook
RUN pip3 install matplotlib

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]