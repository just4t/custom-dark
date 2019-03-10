#!/bin/bash

echo
echo
echo You have selected to restore the DEFAULT-LIGHT theme to your Mail-in-a-Box server ...
echo

sleep 2

#  Making sure we already have removed unneeded files & folders for this theme.
rm -f $/usr/local/lib/mailinabox/vendor/assets/bootstrap/css/custom.dark.*.css
rm -rf $/usr/local/lib/mailinabox/vendor/assets/images

wait

# 'status-checks' sed 'delete/append' patch to restore the default-light theme:
sed -i -e 's/#888/#733/1; s/#cc0/#770/1; s/#03ab22/#040/1' /root/mailinabox/management/templates/system-status.html

# 'index' sed 'delete/append' patch to restore the default-light theme:
sed -i -e 's/#888/#733/1; s/#cc0/#770/1; s/#03ab22/#040/1' /root/mailinabox/management/templates/system-status.html
sed -i '8d' /root/mailinabox/management/templates/index.html
sed -i '7a\\t\t<title>{{hostname}} - Mail-in-a-Box Control Panel</title>' /root/mailinabox/management/templates/index.html
sed -i '12d' /root/mailinabox/management/templates/index.html
sed -i '11a\\t\t<link rel="stylesheet" href="/admin/assets/bootstrap/css/bootstrap.min.css">' /root/mailinabox/management/templates/index.html
sed -i '14d' /root/mailinabox/management/templates/index.html
sed -i '13a\\t\tbody {' /root/mailinabox/management/templates/index.html
sed -i '165d' /root/mailinabox/management/templates/index.html
sed -i '164a\\t\t<p>This is a <a href="https://mailinabox.email">Mail-in-a-Box</a>.</p>' /root/mailinabox/management/templates/index.html

echo
echo Working ...

sleep 5

echo
echo =================================================
echo Your desired LIGHT theme is READY!... REBOOT your server NOW and visit your BOX admin panel through your browser as PRIVATE / INCOGNITO mode and/or refresh your browser by cleaning your currently booked cookies and browser cache, to see the final results inmediately. Enjoy It!
echo =================================================
echo

# deleting '/root/miab-themes'
rm -rf /root/miab-themes
