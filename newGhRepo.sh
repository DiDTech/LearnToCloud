#!/bin/sh
while [ -z "$repoName" ]
do
  echo "Provide a repository name"
  read -r -p "Repository name: " repoName
done
