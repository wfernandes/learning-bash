#!/bin/bash

pi='192.168.0.108'
# Added public key to pi machine. SSH into pi and run the remote script. Get the contents of remote script and 
# write it to local file.
ssh root@$pi 'bash -s' < remoteScript.sh >> ~/localFileWithRemoteData.txt
