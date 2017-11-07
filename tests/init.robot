*** Settings ***
Library  Selenium2Library
Library  Process

Resource  keywords/user_keyword.robot

*** Variables ***
${url}  http://172.17.0.2:8080

*** Test Cases ***

Open jenkins webside
	Open Browser  ${url}  chrome
	Go To    ${url}

Login to Jenkins
	Login to Jenkins  admin  admin
	Log out from Jenkins

Login to Jenkins with incorrect login
	Login to Jenkins  incorrect_login  admin
	Try again type password

Login to Jenkins with incorrect password
	Login to Jenkins  admin  incorrect_password
	Try again type password

Login to Jenkins with incorrect login and incorrect password
	Login to Jenkins  incorrect_login  incorrect_password
	Try again type password
