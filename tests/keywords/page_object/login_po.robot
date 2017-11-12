*** Variables ***
${empty}

*** Keywords ***

Click login button
	Click Element  link=log in

Type login and password
	[Arguments]  ${login}=${empty}  ${password}=${empty}
	Input Text  j_username  ${login}
	Input Text  j_password  ${password}

Confirm login
	Click Button  yui-gen1-button

Click logout button
	Click Element  link=log out

Click again type password
	Click Element  link=Try again

Go to MANAGE JENKINS
	Click Element  link=Manage Jenkins

Go to MANAGE USERS
	Wait Until Element Is Visible  link=Manage Users
	Click Element  link=Manage Users
