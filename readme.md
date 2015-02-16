Install
```
git clone --depth 5 -b master https://github.com/incmve/kWh.git
cd kWh
```
Make sh runable
```
sudo chmod +x create-rrd
sudo chmod +x create-png
sudo chmod +x meter
 ```
Create rrd DB
```
sudo ./create-rrd
```

Make a service so it runs after reboot
```
wget https://raw.github.com/incmve/kWh/master/kwhmeter-init-d
sudo cp kwhmeter-init-d /etc/init.d/kwhmeter
sudo chmod +x /etc/init.d/kwhmeter
sudo chown root:root /etc/init.d/kwhmeter
sudo update-rc.d kwhmeter defaults
```

Crontab for creating the graphics and copy files to a remote disk mounted as "myweb"
```
*/20 * * * * sudo /home/pi/kWh/update.sh >/dev/null 2>&1
```
