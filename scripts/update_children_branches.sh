#!/bin/bash

#define children branch names
CHILDREN_BRANCHES=('a' 'b')


#basic setup for git with bot naming
git config user.name "Automerge Bot"
git config user.email "bot@example.com"
git config pull.rebase false 


#are we going to have dev work flows for each ?


#loop through the children branches and merge with master
for i in ${CHILDREN_BRANCHES[@]};
do
    git checkout $i
    git merge main
done