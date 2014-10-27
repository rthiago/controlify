#! /usr/bin/python
import dbus ;
bus = dbus.SessionBus();
player = bus.get_object( 'org.mpris.MediaPlayer2.spotify' , '/org/mpris/MediaPlayer2' )
player.Previous()