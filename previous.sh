#!/bin/bash

if [ "$(pidof banshee)" ]
then
	banshee --restart-or-previous
elif [ "$(pidof spotify)" ]
then
	dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Previous
fi
