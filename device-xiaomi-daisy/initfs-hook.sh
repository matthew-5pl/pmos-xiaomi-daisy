#!/bin/sh

# set framebuffer resolution

echo 1080,4560 > /sys/devices/virtual/graphics/fb0
echo 0 0 > /sys/class/graphics/fb0/pan


