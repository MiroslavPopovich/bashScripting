#!/bin/bash

urls=(
      https://www.youtube.com/
      https://www.udemy.com/
      https://github.com/
     )
tabs=""
chromeBrowser="/mnt/c/Program Files/Google/Chrome/Application/chrome.exe"
fireFoxBrowser="/mnt/c/Program Files/Mozilla Firefox/firefox.exe"
for url in ${urls[*]}
do
	tabs+=" -new-tab $url"
        echo "Loading $url"
done

code&
browse="$chromeBrowser"
browse2="$fireFoxBrowser"
"$browse"$tabs&
"$browse2"
exit 1
