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
		#Getting Email

		read -p "Enter Email : " email;

		#Regex for Email
		regex_mail="^[a-zA-z][a-zA-Z0-9+$#!^&*)(_+=\-?.',|\/]*[@]{1}[a-z.]{3,}[.]{1}[a-z]{2,}";

		#Checking Email

		if [[ $email =~ $regex_mail ]]
		then
			#Getting Mobile Number
			read -p "Enter Mobile No : "; mobile_no;
			#Regex for Mobile Number
			regex_mobile="^([+]{1}[9]{1}[1]|[0]{1})?[6-9]{1}[0-9]{9}$";

			if [[ $mobile_no =~ $regex_mobile ]]
			then
				#Getting Password
				read -p "Enter Password : " password;

				#Rule 1 :egex for Password minimum 8 Characters
				regex_pass1="^[1-9a-zA-z+$#@!^&*)(_+=-?.',|\/]{8,}";
				#checking Password

				if [[ $password =~ $regex_pass1 ]]
				then
					echo "Success ";
				else
					echo "Invalid Password... Please enter minimum 8 characters ";
				fi
			else
				echo "Please Enter Valid Mobile Number ";
			fi
		else
			echo "Please Enter Valid Email Address";
		fi
	else
		echo "Error..! Last name should be start with Cap and has minimum 3 characters";
	fi
else
	echo "Error..! First name should be start with Cap and has minimum 3 characters";
fi
