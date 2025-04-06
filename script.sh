#!/bin/bash

if [ $# -ne 2 ]
then
	echo "Usage: $0 <path_to_directory> <repository_URL>"
fi

LOCAL_DIR="$1"
REPO="$2"

cd "$LOCAL_DIR" || { echo "Directory $LOCAL_DIR not found"; exit 1; }

git init
git remote add origin "$REPO"
git add .
git commit -m "Initial commit"
git branch -M main
git push -u origin main
