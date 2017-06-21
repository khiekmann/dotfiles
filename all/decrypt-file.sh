#!/bin/bash

set -u
set -e

aFileToBeDecrypted="${1}"
decryptedFileName="$(echo "${aFileToBeDecrypted}" | sed "s@.gpg@@")"

gpg --out "${decryptedFileName}" --decrypt "${aFileToBeDecrypted}"
