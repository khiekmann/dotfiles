#!/bin/bash

set -u
set -e

aFileToBeEncrypted="${1}"
encryptedFileName="${aFileToBeEncrypted}.gpg"
aRecipient="${2}"

gpg --output "${encryptedFileName}" --armor --encrypt --recipient "${aRecipient}" "${aFileToBeEncrypted}"
