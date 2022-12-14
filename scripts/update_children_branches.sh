#!/bin/bash

#define children branch names
CHILDREN_BRANCHES=('c' 'd')


#basic setup for git with bot naming
git config user.name "Automerge Bot"
git config user.email "bot@example.com"
git config pull.rebase false 


#are we going to have dev work flows for each ?


#loop through the children branches and merge with master
for i in ${CHILDREN_BRANCHES[@]};
do
    git checkout $i
    git rebase main
    git push --force-with-lease
    git checkout main
done