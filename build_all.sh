#!/bin/bash

set -e

for dir in */ ; do
  cd $dir
  bundle update
  bundle install --no-deployment
  rake
  cd ..
done
