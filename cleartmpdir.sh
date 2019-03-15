#!/bin/bash
apt-cache policy tar >> /dev/null 2>&1
if [ $? -eq 0 ]
then
  echo "Tar is installed"
else
  apt-get install tar
fi

find /var/tmp/ -printf "%P\n" -type f -o -type d | tar -czf tempbackup.tgz --no-recursion -C /var/ -T -
rm -rf /var/temp
 