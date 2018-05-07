#!/usr/bin/env bash

echo 'Build initialized ..'
echo 'Checking environment ..'

command -v python >/dev/null 2>&1 || {
	echo $'\'python\' command not found...\nplease install python before continuing..' >&2;
	exit -1;
}

command -v pip >/dev/null 2>&1 || {
	echo $'\'pip\' command not found...\nplease install pip before continuing..' >&2;
	exit -1;
}

echo 'Installing dependencies ...'
pip install -U pip
pip install pipreqs
pip install -r requirements.txt
echo 'Dependencies installation done'
echo 'Build successful!'
