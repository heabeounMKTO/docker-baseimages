#!/bin/bash
while getopts c: flag
do 
  case "${flag}" in 
    c) cache=${OPTARG};;
  esac
done

if [ "$cache" = "true" ]
then 
  echo "building detectbase with cache"
  docker build -t localhost:5000/detectbase . --build-arg CACHE=true 
else
  echo "building detectbase without cache"
  docker build -t localhost:5000/detectbase:cache .
fi
