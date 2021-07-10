## set NTP-Server to german NTP-Pool and sync
##
net stop w32time
w32tm /config /syncfromflags:manual /manualpeerlist:"0.de.pool.ntp.org 1.de.pool.ntp.org 2.de.pool.ntp.org 3.de.pool.ntp.org" /reliable:yes
net start w32time
w32tm /config /update
w32tm /resync /rediscover
