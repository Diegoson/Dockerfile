FROM node:22

ENV TZ=Asia/Kolkata
ENV DEBIAN_FRONTEND=noninteractive

RUN npm install -g supervisor

RUN apt-get update -y && apt-get upgrade -y && \
    apt-get install -y ffmpeg git imagemagick python-is-python3 graphicsmagick sudo curl gnupg && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update -y && apt-get install -y yarn && \
    apt-get autoremove -y && rm -rf /var/lib/apt/lists/*

CMD ["bash"]
