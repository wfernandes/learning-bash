#!/bin/bash

HOST='192.168.0.105'
# Added public key to pi machine. SSH into pi and run the remote script. Get the contents of remote script and 
# write it to local file.

PROXY_IP=10.200.10.62
DATA_FILE="/home/wfernandes/localFileWithRemoteData.txt"
WEB_SERVERS_HOST_FILE="/home/wfernandes/webservers.txt"

# Remove existing webservers.txt in order to start from clean slate
if [ -f $WEB_SERVERS_HOST_FILE ]; then
	rm $WEB_SERVERS_HOST_FILE
fi

# Check if number of arguments is 0
if [ "$#" -eq 0 ]; then
	echo "Using default proxy ip: $PROXY_IP"
else
	$PROXY_IP=$1
fi	

echo "Getting data from MYSQL database"
ssh root@$HOST 'bash -s' < getMysqlData.sh > $DATA_FILE

if [ -f $DATA_FILE ]; then
	while read webserver
	do
		echo -e "$PROXY_IP \t  $webserver" >> $WEB_SERVERS_HOST_FILE 
	done < $DATA_FILE
	echo "Wrote host entries for webservers to $WEB_SERVERS_HOST_FILE"
else
	echo "Data file does not exist"
fi


