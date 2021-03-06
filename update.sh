#!/bin/bash

cd $(dirname $0)

export PATH=$HOME/.local/bin:$PATH

source .venv/bin/activate

pip install --upgrade pip pipenv wheel
pip install --upgrade pymysql mysqlclient bs4 speedtest GitPython pyotp
pip install --upgrade ruamel.yaml requests netdisco hass-configurator
pip install --upgrade homeassistant==$(cat .homeassistant.version) homeassistant-cli

./restart-daemon.sh

