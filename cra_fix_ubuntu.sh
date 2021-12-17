#!/bin/bash

tput setaf 2; echo UPDATING PACKAGE LIST
apt update
clear

tput setaf 2; echo INSTALLING NODEJS
sleep 7
apt install nodejs -y
clear

tput setaf 2; echo INSTALLING NPM
sleep 7
apt install npm -y
clear

tput setaf 2; echo GATHERING AUDIT INFO FOR CREATE-REACT-APP
sleep 7
npm install -g create-react-app
sleep 2
clear

tput setaf 2; echo FIXING AUDITS FOR CREATE-REACT-APP
sleep 7
npm audit fix
sleep 2
clear

tput setaf 2; echo INSTALLING CREATE-REACT-APP
sleep 7
npm install -g create-react-app -y
sleep 2
clear

tput setaf 2; echo CLEARING CACHE TO INSTALL N
sleep 7
npm cache clean -f
sleep 2
clear

tput setaf 2; echo INSTALLING N
sleep 7
npm install -g n
sleep 2
clear

tput setaf 2; echo UPGRADING NODE AND NPM
sleep 7
sudo n stable
sleep 2
clear

tput setaf 1; echo DONE. CLOSE THIS TERMINAL WINDOW BEFORE CREATING A NEW REACT APP.
sleep 10
kill -9 $PPID
