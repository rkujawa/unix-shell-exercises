#!/bin/bash

echo $*

for i in $@ ; do
	touch $@
done

