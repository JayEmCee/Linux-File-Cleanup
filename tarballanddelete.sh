#!/bin/bash
apt-cache policy tar >> /dev/null 2>&1
if [ $? -eq 0 ]
then
  echo "Tar is installed"
else
  apt-get install tar
fi

find . -type f -size +500M | xargs tar -cvzf backup.tar.gz;

find . -size +500M -delete;   

