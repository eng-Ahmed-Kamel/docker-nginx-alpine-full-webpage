#! /bin/bash
echo "# docker-nginx-alpine-full-webpage" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:eng-Ahmed-Kamel/docker-nginx-alpine-full-webpage.git
git push -u origin main
