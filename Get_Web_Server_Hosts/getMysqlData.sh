#!/bin/bash

DATABASE='pi'
mysql -u pi $DATABASE -e 'select name from name'

