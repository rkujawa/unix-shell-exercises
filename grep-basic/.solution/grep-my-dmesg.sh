#!/bin/bash

SRCTXT=dmesg.txt

grep usb $SRCTXT > out-usb.txt
grep -E 'pci [[:xdigit:]]{4}:[[:xdigit:]]{2}:[[:xdigit:]]{2}\.[[:xdigit:]]:' $SRCTXT > out-pci.txt
grep -n disabled $SRCTXT > out-disabled.txt
grep -v a $SRCTXT > out-no-a.txt
grep 'registered$' $SRCTXT > out-registered.txt

