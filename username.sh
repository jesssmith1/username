#! /bin/bash
# username.sh
echo "Your username must contain between 3 and 13 characters. The username may not begin with a number. The username may contain the underscore character. Enter a username: "
read USERNAME

while echo $USERNAME | egrep -v "^[a-z][a-z0-9_]{2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username that meets the criteria: "
	echo "Enter a USERNAME: "
	read USERNAME
done
echo "Thank You!"
