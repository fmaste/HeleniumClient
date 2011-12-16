#!/bin/bash

OS=`uname`
ARCH=`uname -m`
CHROMEDRIVER=""

if [[ "$OS" == 'Darwin' ]]; then
   CHROMEDRIVER='chromedriver-osx'
else
	if [[ "$unamearch" == 'x86_64' ]]; then
		CHROMEDRIVER='chromedriver-linux32'
	else
		CHROMEDRIVER='chromedriver-linux64'
	fi
fi

echo $CHROMEDRIVER

java -Dwebdriver.chrome.driver=chromedriver/current/$CHROMEDRIVER -jar selenium/current/selenium-server-standalone.jar

