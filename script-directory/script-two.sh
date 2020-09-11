#!/usr/bin/bash

echo '##########################################################'
echo '###################    START   ###########################'
pwd
ls -lha
free -h
echo 'Testando a execucao de um shell script no Jenkins'
date +%Y-%m-%d
cat /etc/*release
lsb_release -a
echo '###################     END    ###########################'
echo '##########################################################'