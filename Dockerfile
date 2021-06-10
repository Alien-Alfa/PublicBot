FROM fusuf/whatsasena:latest

RUN git clone https://github.com/Alien-alfa/PublicBot /root/WhatsAsenaDuplicated
WORKDIR /root/WhatsAsenaDuplicated/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit
RUN apk add ffmpeg

CMD ["node", "bot.js"]
