#!/bin/bash

#define children branch names
PARENT_BRANCH='main'
CHILDREN_BRANCHES=('e-main' 'f-main')


#basic setup for git with bot naming
git config user.name "Autorebase Bot"
git config user.email "bot@example.com"

#loop through the children branches and merge with master
for i in ${CHILDREN_BRANCHES[@]};
do
    git checkout $i
    git rebase $PARENT_BRANCH
    git push --force-with-lease
    git checkout $PARENT_BRANCH
done