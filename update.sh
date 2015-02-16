#!/bin/sh

sudo /home/pi/kWh/create-png detail
sudo /home/pi/kWh/create-png hourly
sudo cp /home/pi/kWh/*.png /home/pi/myweb
