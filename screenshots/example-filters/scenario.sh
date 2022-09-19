xdotool \
    mousemove --sync 640 754 \
    sleep .1 \
    click 1 \
    sleep .1 \
    type --delay 50 "so, as we seem to have gotten along nicely the past few months or so ... how about this weekend I take us to the Westwald woods?"
xdotool \
    sleep 2 \
    key Return
python -m efck &
xdotool \
    sleep .5 \
    search efck \
    windowfocus \
    sleep .1 \
    key alt+f \
    sleep 2 \
    type --delay 200 "promise I won't rape you there"
xdotool \
    sleep .5 \
    key --delay 50 Down Down Down Down Down Down Down Down Down Down Down \
    sleep .1 \
    key --delay 200 Up Up \
    sleep .5 \
    key Return \
    sleep 1 \
    key Return
xdotool \
    sleep 5 \
    type --delay 130 "I mean that in a twisted but rather ... actually, I'm just showcasing this new "
xdotool sleep 3.5
