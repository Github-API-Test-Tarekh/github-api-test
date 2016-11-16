#!/bin/sh

git clone git@github.com:BobFromAccounting/taskmanager_angular.git

cd taskmanager_angular/

git remote add forigin git@github.com:Github-API-Test-Tarekh/test.git

git push -u forigin master

cd ../lib/

ruby github_test.rb
