#!/bin/bash

# Move to the script directory.
BASEDIR=$(dirname $0)
cd $BASEDIR

OS=`uname`
ARCH=`uname -m`
CHROMEDRIVER=""

if [[ "$OS" == 'Darwin' ]]; then
   CHROMEDRIVER='chromedriver-osx'
else
	if [[ "$unamearch" == 'x86_64' ]]; then
		CHROMEDRIVER='chromedriver-linux64'
	else
		CHROMEDRIVER='chromedriver-linux32'
	fi
fi

java -Dwebdriver.chrome.driver=chromedriver/current/$CHROMEDRIVER -jar selenium/current/selenium-server-standalone.jar

