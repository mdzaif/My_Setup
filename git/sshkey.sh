read -p "Comment: " key_comment
folder='/home/'$(whoami)'/.ssh/'
read -p "File name: " file
path=$folder$file

#command
ssh-keygen -t ed25519 -C "$key_comment" -f $path > /dev/null

# success
echo "Key Generated!"
echo "Your public key: "
cat $path.pub