*** Keywords ***

Type login and password
	Input Text  j_username  admin
	Input Text  j_password  admin

Confirm login
	Click Button  yui-gen1-button

Click logout button
	Click Element  link=log out
