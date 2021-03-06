#!/bin/bash

export PATH=$HOME/.local/bin:$PATH

cd $(dirname $0)

source .venv/bin/activate

hass \
	--config . \
	--log-rotate-days 2 \
	--pid-file home-assistant.pid
