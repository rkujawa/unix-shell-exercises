#!/bin/bash

PKGS="vim-enhanced pandoc lynx libatf-sh-devel libatf-sh kyua-cli"

if [ $(whoami) != "root" ] ; then
	echo Please run this script as root.
	exit 1
fi

dnf -y update
dnf -y install $PKGS 

