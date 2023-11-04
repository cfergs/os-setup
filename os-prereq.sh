#!/bin/bash

FedoraPreReqs() {
  echo "*** START: pre-requirements check ***"

  if [ $(yum list installed | cut -f1 -d" " | grep --extended 'python3-pip' | wc -l) -eq 1 ]; then
    echo "pip3 installed";
  else
    echo "pip3 missing"
    sudo dnf install python3-pip -y
  fi

  echo "*** FINISH: pre-requirements check ***"
}

if [ -f "/etc/fedora-release" ]; then
  echo "Running Fedora"
  FedoraPreReqs
else
  echo "Not running Fedora. Exiting."
  exit 1
fi
