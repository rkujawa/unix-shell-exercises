#!/bin/bash

PKGS="vim-enhanced pandoc lynx"

if [ $(whoami) != "root" ] ; then
	echo Please run this script as root.
	exit 1
fi

dnf -y update
dnf -y install $PKGS 

