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

Check all login components
	Page Should Contain Element  j_username
	Page Should Contain Element  j_password 	
	Page Should Contain Element  yui-gen1-button
	Page Should Contain Element  remember_me

Click again type password
	Click Element  link=Try again

Go to MANAGE JENKINS
	Click Element  link=Manage Jenkins

Go to MANAGE USERS
	Wait Until Element Is Visible  link=Manage Users
	# Click Element  //*[@id="management-links"]/tbody/tr[15]/td[1]/a/img  # WebDriverException: Message: unknown error: Element is not clickable at point (430, 1023)
	Go To  http://172.17.0.2:8080/securityRealm/
	Click Element  link=Create User

Type data for create user
	[Arguments]  ${username}=${empty}  ${password}=${empty}  ${confirmPassword}=${empty}  ${fullName}=${empty}  ${email}=${empty}
	Input Text  username  ${username}
	Input Text  password1  ${password}
	Input Text  password2  ${confirmPassword}
	Input Text  fullname  ${fullName}
	Input Text  email  ${email}

Confirm create user
	Click Button  yui-gen2-button
	
Check address is correct  
	[Arguments]  ${link}
	${browserLink} =  Get Location
	Should be equal as strings  ${link}  ${browserLink}
