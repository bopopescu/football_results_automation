#!/bin/bash

git fetch --all
git reset --hard origin/master
pm2 delete app
pm2 start app.js
pm2 save
pm2 startup