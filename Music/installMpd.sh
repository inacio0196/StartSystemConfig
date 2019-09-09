#!/bin/bash - 
#===============================================================================
#
#          FILE: installMpd.sh
# 
#         USAGE: ./installMpd.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 08/09/2019 23:04
#      REVISION:  ---
#===============================================================================

sudo apt install mpd ncmpcpp mpc

mkdir -p ~/.config/mpd && cd ~/.config/mpd
touch database  mpd.conf  mpd.fifo  mpd.log   mpdstate
sudo cp /etc/mpd.conf ~/.config/mpd/mpd.conf

