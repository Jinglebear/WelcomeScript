#!/bin/bash
#This script allows you to promt a personal Message 
#Every time you open a new terminal
User=0;
echo "Hello, $USER"

PS3="Your Choise:"
select choise in Create\ new\ Welcome-Message Delete\ old\ Welcome-Message ZZ_QUIT 
do
	
case $choise in
ZZ_QUIT) exit ;;
Delete\ old\ Welcome-Message) sed -i '/^echo/d' .bashrc && exit ;;
Create\ new\ Welcome-Message) 
	echo -n "Enter your pesonalized message:"
	read Q
	echo "echo $Q,$USER...">>.bashrc && exit ;;	
esac
done

	 
