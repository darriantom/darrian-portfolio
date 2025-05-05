#!/bin/bash

# Auto push detected changes to Git

while true; do
  inotifywait -r -e modify,create,delete . &&
  git add . &&
  git commit -m "Auto-update on $(date +'%F %T')" &&
  git push origin main
done