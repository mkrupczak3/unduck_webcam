#!/usr/bin/env bash
# Matthew's unfuck_webcam.sh

# Designed for use with Logitech c920,
#     possibly works w/ others.

# Using code stolen from github.com/hoaxdream

device=$(v4l2-ctl --list-devices | grep "UVC" -A 1 | grep "/dev/video." -o)

v4l2-ctl -d $device --set-ctrl=exposure_auto=1
v4l2-ctl -d $device --set-ctrl=white_balance_temperature_auto=0
v4l2-ctl -d $device --set-ctrl=exposure_absolute=300
v4l2-ctl -d $device --set-ctrl=saturation=128
v4l2-ctl -d $device --set-ctrl=contrast=128
v4l2-ctl -d $device --set-ctrl=sharpness=128
v4l2-ctl -d $device --set-ctrl=white_balance_temperature=4800
# Matthew's Focus controls for ~2ft distance
v4l2-ctl -d /dev/video1 --set-ctrl=focus_auto=0
v4l2-ctl -d /dev/video0 --set-ctrl=focus_absolute=35
# # Matthew's old tunings
# v4l2-ctl -d /dev/video0 --set-ctrl=brightness=100
# v4l2-ctl -d /dev/video0 --set-ctrl=contrast=105
# v4l2-ctl -d /dev/video0 --set-ctrl=saturation=140
