#script that copies messages from linux server to storage account in hourly files

year=`date '+%Y'`;
month=`date '+%m'`;
day=`date '+%d'`;
hour=`date '+%H'`;
dir='/home/syslog/log/messages';
#  In SAS add /log/$year/$month/$day/$hour after https://storageaccountname.blob.core.windows.net
sig='<ENTER SECURE ACCESS SIGNATURE';

azcopy copy $dir "$sig" --recursive