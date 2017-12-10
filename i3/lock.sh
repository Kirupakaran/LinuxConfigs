#!/bin/bash

bg="$HOME/.config/backgrounds/lock.jpg"

lock() {
	letterEnteredColor=d23c3dff
	letterRemovedColor=d23c3dff
	passwordCorrect=00000000
	passwordIncorrect=d23c3dff
	background=00000000
	foreground=ffffffff
    $HOME/i3lock-color/x86_64-pc-linux-gnu/i3lock \
		-n -i "$bg" \
		--timepos="x-90:h-ch+30" \
		--datepos="tx+24:ty+25" \
		--clock --datestr "Password" \
		--insidecolor=$background --ringcolor=$foreground --line-uses-inside \
		--keyhlcolor=$letterEnteredColor --bshlcolor=$letterRemovedColor --separatorcolor=$background \
		--insidevercolor=$passwordCorrect --insidewrongcolor=$passwordIncorrect \
		--ringvercolor=$foreground --ringwrongcolor=$foreground --indpos="x+280:h-70" \
		--radius=20 --ring-width=4 --veriftext="" --wrongtext="" \
		--textcolor="$foreground" --timecolor="$foreground" --datecolor="$foreground"
}

# lockscreen with dimmed background
lock
