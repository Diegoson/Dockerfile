FROM quay.io/vorterx/xastral:latest
RUN git clone https://github.com/naxordeve/whatsapp-bot /root/naxordeve/
WORKDIR /root/naxordeve/
RUN yarn install --network-concurrency 1
CMD ["npm", "start"]
