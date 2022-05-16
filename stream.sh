#!/bin/bash

set -e

while true
do
  ffmpeg -loglevel info -y -re \
    -f mp4 -loop 1 -i ok.png \
    -f concat -safe 0 -i <(for f in http://stream.zeno.fm/v4wf5ezpxrhvv;) | shuf) \
    -c:v libx264 -preset veryfast -b:v 3000k -maxrate 3000k -bufsize 6000k \
    -framerate 25 -video_size 1280x720 -vf "format=yuv420p" -g 50 -shortest -strict experimental \
    -c:a aac -b:a 128k -ar 44100 \
    -f flv rtmp://a.rtmp.youtube.com/live2/$YOUTUBE_KEY
done
