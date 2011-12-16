#!/bin/bash

chromedriver=""
unamestr=`uname`
unamearch=`uname -m`
if [[ "$unamestr" == 'Linux' ]]; then
	if [[ "$unamearch" == 'x86_64' ]]; then
		chromedriver='chromedriver-linux32'
	else
		chromedriver='chromedriver-linux64'
	fi
elif [[ "$unamestr" == 'Darwin' ]]; then
   chromedriver='chromedriver-osx'
fi

echo $chromedriver

java -Dwebdriver.chrome.driver=chromedriver/current/$chromedriver -jar selenium/current/selenium-server-standalone.jar

