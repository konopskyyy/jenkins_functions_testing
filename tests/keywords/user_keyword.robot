*** Settings ***
Resource  page_object/login_po.robot

*** Variables ***
${empty}

*** Keywords ***

Login to Jenkins
	[Arguments]  ${login}=${empty}  ${password}=${empty}
	Click login button
	Type login and password  ${login}  ${password}
	Confirm login

Log out from Jenkins
	Click logout button

Try again type password
	Click again type password

Go to CREATE USER page
	Go to MANAGE JENKINS
	Go to MANAGE USERS

Try create user without all information
	[Arguments]  ${username}=${empty}  ${password}=${empty}  ${confirmPassword}=${empty}  ${fullName}=${empty}  ${email}=${empty}
	Type data for create user  ${username}  ${password}  ${confirmPassword}  ${fullName}  ${email}
	Confirm create user

Create user
	[Arguments]  ${username}=${empty}  ${password}=${empty}  ${confirmPassword}=${empty}  ${fullName}=${empty}  ${email}=${empty}
	Type data for create user  ${username}  ${password}  ${confirmPassword}  ${fullName}  ${email}
	Confirm create user
	Check address is correct   ${URL}/securityRealm/
