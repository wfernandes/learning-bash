#!/bin/bash

pi='192.168.0.108'
# Added public key to pi machine. So using this alias to ssh into pi and run the remote script.
ssh root@$pi 'bash -s' < testRemoteScripting.sh
