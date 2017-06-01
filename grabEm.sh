#! /bin/bash

set -u
set -e

syncingFor="discordia"
pathToHere="$(dirname $(readlink -f $0))"

cp ~/.config/i3/config "${pathToHere}/${syncingFor}"/.config/i3/config
cp ~/.bash_aliases ~/.bashrc ~/.profile "${pathToHere}/${syncingFor}"/
