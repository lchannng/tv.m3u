FROM node:alpine
RUN apk add --no-cache ffmpeg && npm install -g iptv-checker 
VOLUME /data
ENTRYPOINT [ "iptv-checker" ]
# ENTRYPOINT [ "/bin/sh" ]
