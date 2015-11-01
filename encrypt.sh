#!/bin/sh

die () {
	echo >&2 "$@"
	exit 1
}

[ "$#" -eq 1 ] || die "1 argument required, $# provided"

if [ ! -f $1 ]; then
	echo "File not found!";
	exit 1;
fi

while true
do
	read -s -p "Password: " password
	echo
	read -s -p "Password (again): " password2
	echo
	[ "$password" = "$password2" ] && break
	echo "Please try again"
done

openssl aes-128-cbc -salt -in $1 -out $1.aes -k $password  || { echo 'Encryptation failed' ; exit 1; }

git checkout -- $1  || { echo 'Checkout failed' ; exit 1; }

