#!/bin/bash

#Display what VMs are running on this xen host.
#Written by hfuller on 03 Feb 2015
#Known bugs: if your hostname is over three or four characters it might look bad on a 20 char display.
#This utilizes http://sourceforge.net/projects/lcdproc-client/ which should be in your path (and may be included with this).

while { echo "Running VMs on `hostname`:" & sudo xm list|tail -n +3|cut -d " " -f 1|xargs|fold -sw 20; } | lcdproc_client.py -t 60 -f -; do
	sleep 0
done
