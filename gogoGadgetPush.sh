#!/bin/bash

dir=$1
commitMassage=$2

check_exit_status() {
	if [ $? -ne 0 ]
	then
		echo "An error occurred, please see the output!"
		exit 2
	else
		echo "Mooving to next stage - $1"
	fi
}

if [ -d $dir/.git ]
then
	echo "The repo exists! Prepearing for a push!"
	check_exit_status "chacking status"
else
	echo "There is no such a repo! Please enter valid Repo dir!"
	exit 4
fi

git -C $dir status
check_exit_status "adding"
git -C $dir add .
check_exit_status "chacking status"
git -C $dir status
check_exit_status "committing"
git -C $dir commit -m "$commitMassage"
check_exit_status "pushing"
git -C $dir push
check_exit_status "The task is completed"



