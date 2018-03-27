#!/bin/bash
service syslog-ng start
service openvswitch-switch start

kytosd && sleep 4
kytos napps install $(echo $KYTOS_NAPPS | perl -pe 's/,/ /g')
cat /tmp/kytos-welcome.txt
/bin/bash
