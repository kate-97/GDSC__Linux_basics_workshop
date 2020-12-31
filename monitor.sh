#!/bin/sh

# monitors web page for changes


wget -o /tmp/page.html $1
md5sum /tmp/page.html > /tmp/previous_md5

while :
do
	wget -o /tmp/page.html $1
	md5sum /tmp/page.html > /tmp/last_md5
	# diff /tmp/previous_md5 /tmp/last_md5
	if [ "$?" = "!" ] ; then 
    cmp --silent /tmp/previous_md5 /tmp/last_md5 || echo "files are different"
	fi
	mv /tmp/last_md5 /tmp/previous_md5
	rm /tmp/page.html
  echo "\n\n\n"
  sleep 5s
done
