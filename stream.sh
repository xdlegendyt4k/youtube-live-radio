#!/bin/bash

set -e

while true
do
 ffmpeg -stream_loop -1 -re -thread_queue_size 5512 -an -i "ok.mp4" -stream_loop -1 -re -i "http://stream.zeno.fm/v4wf5ezpxrhvv" -c:v copy -c:a copy -f flv rtmp://a.rtmp.youtube.com/live2/$YOUTUBE_KEY
done
