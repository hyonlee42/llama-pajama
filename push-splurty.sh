#!/bin/bash

echo Pushing splurty to git and heroku...

git add --all
git commit -m "$1"

git push origin master
git push heroku master
