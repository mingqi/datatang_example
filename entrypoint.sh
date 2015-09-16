#! /bin/bash

### setup cron job ###
rm -rf /etc/cron.d/*
printenv > /etc/cron.d/spider
echo "" >> /etc/cron.d/spider
# the file under /etc/cron.d MUST NOT container . in file name
cat /datatang_example/spider.cron >> /etc/cron.d/spider
echo "" >> /etc/cron.d/spider
sed 's,{{TIMEOUT}},'"${TIMEOUT}"',g' -i /etc/cron.d/spider

### apply environment variable on config file ###
echo $QUERY | tr "," "\n"  > /datatang_example/query.txt


exec "$@"
