FROM ubuntu:latest

LABEL mainteainer="Sanshiro"
LABEL version="0.1"

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    curl \
    git \
    lv \
    wget \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

COPY requirements.txt ${PWD}

# pythonのパッケージをインストール
RUN pip3 install -r requirements.txt

CMD ["python3"]

