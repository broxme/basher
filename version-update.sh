#!/bin/bash
#

# used to update the version number throughout the necessary files in basher
#   usr/share/basher-gtk/basher-gtk.py:APP_VERSION = "1.0.0"
#   etc/basher/basher.version:BASHERVERSION="1.0.0"
#   DEBIAN/control:Version: 1.0.0
#   

curr_version=`cat ./etc/basher/basher.version | cut -d\" -f2`
curr_major_version=`echo ${curr_version} | cut -d. -f1-2`
curr_minor_version=`echo ${curr_version} | cut -d. -f3`
next_minor_version=$((curr_minor_version + 1))

if [ ! "${1}" ] ; then # just echo out the version number
  echo ""
  echo " Current basher version is :  ${curr_version}"
  echo ""
  echo " Example to change to the next minor version :"
  echo "   sudo ./version-update.sh 2.18.${next_minor_version}"
  echo ""
else # change version number throughout files
  echo ""
  echo "usr/share/basher-gtk/basher-gtk.py"
  grep 'APP_VERSION = \".*\"$' ./usr/share/basher-gtk/basher-gtk.py
  echo "  changed to"
  sed -i "s/APP_VERSION = \".*\"$/APP_VERSION = \"${1}\"/" ./usr/share/basher-gtk/basher-gtk.py
  grep 'APP_VERSION = \".*\"$' ./usr/share/basher-gtk/basher-gtk.py
  
  echo ""
  echo "etc/basher/basher.version"
  grep 'BASHERVERSION=\".*\"$' ./etc/basher/basher.version
  echo "  changed to"
  sed -i "s/BASHERVERSION=\".*\"$/BASHERVERSION=\"${1}\"/" ./etc/basher/basher.version
  grep 'BASHERVERSION=\".*\"$' ./etc/basher/basher.version
  
  echo ""
  echo "DEBIAN/control"
  grep 'Version:.*$' ./DEBIAN/control
  echo "  changed to"
  sed -i "s/Version:.*$/Version: ${1}/" ./DEBIAN/control
  grep 'Version:.*$' ./DEBIAN/control
  
  curr_version=`cat ./etc/basher/basher.version | cut -d\" -f2`
  echo ""
  echo " NEW basher version is :  ${curr_version}"
fi

exit 0
