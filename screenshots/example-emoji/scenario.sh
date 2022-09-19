xdotool \
    mousemove --sync 640 754 \
    sleep .1 \
    click 1 \
    sleep .1 \
    type --delay 150 "let me show you something..."
xdotool \
    sleep .7 \
    type --delay 200 " name an emoji"
xdotool \
    sleep 1 \
    key Return
xdotool sleep 3.7
python -m efck &
xdotool \
    sleep 1.3 \
    search efck \
    windowfocus \
    sleep .3 \
    type --delay 300 'mang'
xdotool \
    sleep 1 \
    search efck \
    windowfocus \
    key Ctrl+a \
    sleep .2 \
    type --delay 300 'avo'
xdotool \
    sleep .2 \
    key Right \
    sleep .2 \
    key Return \
    sleep .2 \
    key Return \
    sleep .2 \
    type --delay 200 'another one!'
xdotool \
    key Return
xdotool sleep 4
python -m efck --debug &
xdotool \
    sleep .6 \
    search efck \
    windowfocus \
    sleep .1 \
    type --delay 200 'chi'
xdotool \
    sleep .6 \
    type 'c'
xdotool \
    sleep .6 \
    key Return \
    sleep .3 \
    key Return \
    sleep 1 \
    type 'a'
xdotool sleep .1 type --delay 100 'aaaaaaaaaaa'
xdotool sleep .2 type --delay 150 'nd? what do you think?'
xdotool key Return
sleep 9.5
