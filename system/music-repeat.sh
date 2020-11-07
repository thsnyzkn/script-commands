#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Repeat Toggle
# @raycast.mode silent

# Optional parameters:
# @raycast.author Caleb Stauffer
# @raycast.authorURL https://github.com/crstauf
# @raycast.description Repeat Music
# @raycast.packageName Music
# @raycast.icon images/music-logo.png

tell application "Music"

	if song repeat = off then

		set song repeat to all
		do shell script "echo Repeating playlist"
	
	else if song repeat = all then
		
		set song repeat to one
		do shell script "echo Repeating track"
		
	else if song repeat = one
		
		set song repeat to off
		do shell script "echo Repeating off"
	
	end if
	
end tell