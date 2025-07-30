configure terminal
service timestamps debug datetime msec localtime show-timezone
service timestamps log datetime msec localtime show-timezone
logging <IPAddress>
logging trap 7
archive
log config
logging enable
hidekeys
notify syslog
end
show logging
