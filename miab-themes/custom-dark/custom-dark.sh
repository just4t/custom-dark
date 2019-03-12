#!/bin/bash

echo
echo
echo You have selected to apply the CUSTOM-DARK theme to your Mail-in-a-Box server ...
echo

sleep 2

# Old custom-dark theme version & CSS cleanup & Making sure we have the directory 'images' where to save to
rm -f /usr/local/lib/mailinabox/vendor/assets/bootstrap/css/custom.dark.*.css
rm -rf /usr/local/lib/mailinabox/vendor/assets/images
mkdir -p /usr/local/lib/mailinabox/vendor/assets/images

# Move 'custom-dark' 'css' & 'images' files to their /usr/local/lib/mailinabox/vendor/assets path location
cp -f /root/miab-themes/custom-dark/css/custom.dark.*.css /usr/local/lib/mailinabox/vendor/assets/bootstrap/css/
cp -f /root/miab-themes/custom-dark/images/*.png /usr/local/lib/mailinabox/vendor/assets/images/

wait

# 'status-checks' sed 'delete/append' patch for custom-dark theme:
sed -i -e 's/#733/#888/1; s/#770/#cc0/1; s/#040/#03ab22/1' /root/mailinabox/management/templates/system-status.html

wait

# 'index' sed 'delete/append' patch for custom-dark theme:
sed -i '8d' /root/mailinabox/management/templates/index.html
sed -i '7a\\t\t<link rel="icon" href="/admin/assets/images/wicon-32.png" type="image/png"> <title>{{hostname}} - Control Panel</title>' /root/mailinabox/management/templates/index.html
sed -i '12d' /root/mailinabox/management/templates/index.html
sed -i '11a\\t\t<link rel="stylesheet" href="/admin/assets/bootstrap/css/bootstrap.min.css"> <link rel="stylesheet" href="/admin/assets/bootstrap/css/custom.dark.bootstrap.min.css"> <link rel="stylesheet" href="/admin/assets/bootstrap/css/custom.dark.bootstrap.css">' /root/mailinabox/management/templates/index.html
sed -i '14d' /root/mailinabox/management/templates/index.html
sed -i '13a\\t\tbody { color: #ffffff; background: #161616;' /root/mailinabox/management/templates/index.html
sed -i '165d' /root/mailinabox/management/templates/index.html
sed -i '164a\\t\t<p align="center"><a href="https://{{hostname}}/mail/" target="_blank"><img src="/admin/assets/images/wlogo-100.png" alt="wlogo-100" title="This is our Mail-in-a-Box powered webmail"/></a></p>' /root/mailinabox/management/templates/index.html

echo
echo Working ...

sleep 5

echo
echo =================================================
echo Your desired DARK theme is READY!... REBOOT your server NOW and visit your BOX admin panel through your browser as PRIVATE / INCOGNITO mode and/or refresh your browser by cleaning your currently booked cookies and browser cache, to see the final results inmediately. Enjoy It!
echo =================================================
echo

# deleting '/root/miab-themes'
rm -rf /root/miab-themes
