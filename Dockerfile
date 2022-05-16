FROM alpine:3

CMD wget https://download1334.mediafire.com/wqzm2lfp0yog/ialltjs1t54ldpy/ok.mp4

RUN apk add --no-cache bash ffmpeg

RUN mkdir /usr/src/app -p
WORKDIR /usr/src/app/

ADD . /usr/src/app/
CMD ./stream.sh
