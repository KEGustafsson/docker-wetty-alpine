#!/bin/sh

if [ "x${BASE}" == "x" ]; then
  BASE="/wetty"
fi

if [ "x${REMOTE_SSH_SERVER}" == "x" ]; then
  # Login mode, no SSH_SERVER
  npm start -- -p 3000
else
  # SSH connect mode
  cmd="npm start -- -p 3000 --sshhost ${REMOTE_SSH_SERVER} --sshport ${REMOTE_SSH_PORT} --base ${BASE}"
  if ! [ "x${REMOTE_SSH_USER}" == "x" ]; then
    cmd="${cmd} --sshuser ${REMOTE_SSH_USER}"
  fi
  su -c "${cmd}" term
fi