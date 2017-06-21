#!/bin/bash

set -e
set -u

fileToExtract="${1}"

grep -o '[[:alnum:]+\.\_\-]*@[[:alnum:]+\.\_\-]*' "${fileToExtract}" | sort | uniq -i
