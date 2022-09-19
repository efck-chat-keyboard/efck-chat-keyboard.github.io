#!/bin/bash

set -eux

DISPLAY=:44
RESOLUTION=800x800

trap 'trap - SIGTERM && kill -- '"-$$" SIGINT SIGTERM EXIT

export DISPLAY
Xvfb $DISPLAY -screen 0 ${RESOLUTION}x24 &
pid_xvfb=$!
python -m http.server 8011 &
pid_python=$!
sleep 2

for dir in $(find . -maxdepth 1 -type d -name 'example-*'); do

    OUTPUT="$dir.webp"

    cp -R --no-target-directory "$dir" _scenario

    ffmpeg -y -f x11grab -s $RESOLUTION -ss 4 -i $DISPLAY -vf "fps=14,chromakey=darkblue:.1:0,$(cat _scenario/ffmpeg_vf.txt)" -loop 0 $OUTPUT &
    pid_ffmpeg=$!
    sleep 2

    xdotool mousemove --sync 710 767

    chromium \
        --temp-profile \
        --disable-gpu \
        --hide-scrollbars \
        --disable-extensions \
        --disable-plugins \
        --start-fullscreen \
        --enable-logging --v=stderr \
        http://localhost:8011/chat.html &
    pid_chromium=$!

    sleep 3

    export XDG_CONFIG_HOME=_scenario
    source _scenario/scenario.sh
    #rm -R _scenario

    kill $pid_ffmpeg
    kill $pid_chromium
    sleep 1
done

kill $pid_python
kill $pid_xvfb
wait
trap '' SIGINT SIGTERM EXIT

