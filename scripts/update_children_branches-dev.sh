#!/bin/bash

#define children branch names
CHILDREN_BRANCHES=('e-dev' 'f-dev')


#basic setup for git with bot naming
git config user.name "Autorebase Bot"
git config user.email "bot@example.com"

#loop through the children branches and merge with master
for i in ${CHILDREN_BRANCHES[@]};
do
    git checkout $i
    git rebase main
    git push --force-with-lease
    git checkout main
done