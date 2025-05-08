#!/bin/bash
#description: create SSH Key
read -p "Comment: " key_comment"
folder='~/.ssh/'
read -p "File name: " file
path=$folder$file

echo $path

#command
if [ $? -nq 0 ]; then
  echo "failed!"

else 
  ssh-keygen -t ed25519 -C "$key_comment" -f $path > /dev/null
  echo "Key Generated!"
  echo "Your public key: "
  cat $path.pub
fi
