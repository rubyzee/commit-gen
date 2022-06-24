#!/bin/bash

arr[0]="bot: 👋 Hello Github!"
arr[1]="bot: 🥳 Yeayyy!"
arr[2]="bot: 😬 Working from github."
arr[3]="bot: 👨‍💻 Work, work, work!"
arr[4]="bot: 😪 Hufft..."
arr[5]="bot: 😎 I'm working for my master!"
arr[6]="bot: 🙄 Running task, again."
arr[7]="bot: 👻 Thanks master."

rand=$[$RANDOM % ${#arr[@]}]
d="$(TZ=Asia/Jakarta date +"%Y%m%d-%T")"

echo "## 🤔 LAST UPDATED AT: ${d}" > update.md

git config --local user.email "himemori@proton.me"
git config --local user.name "Himemorii"
git add --all
git commit --signoff --message "${arr[$rand]} (at ${d})"
