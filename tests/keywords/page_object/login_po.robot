*** Keywords ***

Click login button
	Click Element  link=log in

Type login and password
	[Arguments]  ${login}  ${password}
	Input Text  j_username  ${login}
	Input Text  j_password  ${password}

Confirm login
	Click Button  yui-gen1-button

Click logout button
	Click Element  link=log out

Click again type password
	Click Element  link=Try again
