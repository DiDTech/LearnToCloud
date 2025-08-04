#!/bin/sh
repoName=$1
while [ -z "$repoName" ]
do
    echo 'Provide a repository name'
    read -r -p 'Repository name: ' repoName
done
echo "# $repoName" >> README.md
git init
git add .
git commit -m "First commit"
curl -u DiDTech https://api.github.com/user/repos -d '{"name": "'"$repoName"'", "private":false}'