#!/bin/bash

set -e

while true
do
 ffmpeg -stream_loop -1 -re -thread_queue_size 5512 -an -i "785502.mp4" -stream_loop -1 -re -i "https://stream.zeno.fm/hq78pmaqzk0uv" -c:v copy -c:a copy -f flv rtmp://a.rtmp.youtube.com/live2/$YOUTUBE_KEY
done
