#/bin/bash

#Welcome Message

echo "Welcome to User Registration Problem"
echo "====================================";
printf "\n";

#Getting First Name

read -p "Enter First Name : " first_name;

#Regex for cheking First Name
regex_name="^[A-Z]{1}[a-z]{2,}$";

#Cheking First Name

if [[ $first_name =~ $regex_name ]]
then
	#Getting Last Name

	read -p "Enter Last Name : " last_name;
	#Cheking Last Name

	if [[ $last_name =~ $regex_name ]]
	then
		echo "Success.."
	else
		echo "Error..! Last name should be start with Cap and has minimum 3 characters";
	fi
else
	echo "Error..! First name should be start with Cap and has minimum 3 characters";
fi
