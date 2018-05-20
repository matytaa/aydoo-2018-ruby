#!/bin/bash

set -e

for dir in */ ; do
  cd $dir
  bundle update
  bundle install
  rake
  cd ..
done
