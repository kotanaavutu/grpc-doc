#!/bin/bash

echo "Hello $1"
echo "Current time is $2"

if [[ $3 == 1 ]]; then
  echo "Execute Function-1"
elif [[ $3 == 2 ]]; then
  echo "Execute Function-2"
else
  echo "Execute Function-3"
fi