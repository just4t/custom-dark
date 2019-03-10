#!/bin/bash

# Cleaning / moving downloaded /miab-themes folder to /root/ path.
mv /root/custom-dark/miab-themes /root/

wait

# Making sh files executable.
chmod +x /root/miab-themes/custom-dark/custom-dark.sh
chmod +x /root/miab-themes/custom-dark/default-light.sh

wait

sleep 3

echo
echo =================================================
echo
echo Done! Post download config. settings have been applied as follows:
echo
echo - Moved /miad-themes folder to /root/
echo - Made scripts executables.
echo - Deleted the now useless /root/custom-dark folder.
echo
echo To manually apply the CUSTOM-DARK theme run:
echo
echo sudo /bin/bash /root/miab-themes/custom-dark/custom-dark.sh
echo
echo To manually apply/ restore the DEFAULT-LIGHT theme run:
echo
echo sudo /bin/bash /root/miab-themes/custom-dark/default-light.sh
echo
echo =================================================
echo

# Cleanup after downloading theme from github and applied this config.
rm -rf /root/custom-dark
