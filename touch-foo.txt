#!/bin/bash

set -e

if [[ 'bust cache' == $CI_COMMIT_MESSAGE ]]
then
  echo 'touching foo.txt file? ---> YES'
  `touch foo.txt`
else
  echo 'touching foo.txt file? ---> NO'
fi
