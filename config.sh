#!/bin/bash

# Cleaning / moving downloaded /miab-themes folder to /root/ path.
mv /root/custom-dark/miab-themes /root/

wait

sleep 2

# Making sh files executable.
chmod +x /root/miab-themes/custom-dark/custom-dark.sh
chmod +x /root/miab-themes/custom-dark/default-light.sh

wait

sleep 2

echo
echo =================================================
echo
echo Done! Post download config. settings have been applied as follows:
echo
echo - Moved /root/custom-dark/miad-themes folder to /root/
echo - Made sure scripts are CHMOD=+x [executables]
echo - Deleted the now useless /root/custom-dark folder
echo
echo To apply the CUSTOM-DARK theme run:
echo
echo sudo /bin/bash /root/miab-themes/custom-dark/custom-dark.sh
echo
echo Or to apply/ restore the DEFAULT-LIGHT theme run:
echo
echo sudo /bin/bash /root/miab-themes/custom-dark/default-light.sh
echo
echo =================================================
echo

# Cleanup after downloading theme from github and applied this config.
rm -rf /root/custom-dark
