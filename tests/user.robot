*** Settings ***
Library  Selenium2Library
Library  Process

Resource  keywords/user_keyword.robot

*** Variables ***
${url}  http://172.17.0.2:8080

*** Variables ***
${empty}

*** Test Cases ***

Open jenkins webside
	Open Browser  ${url}  chrome
	Go To    ${url}
	Maximize Browser Window

Login to Jenkins
	Login to Jenkins  incorrect_login  admin
	Try again type password
	Login to Jenkins  admin  incorrect_password
	Try again type password
	Login to Jenkins  incorrect_login  incorrect_password
	Try again type password
	Login to Jenkins  incorrect_login
	Try again type password
	Login to Jenkins  ${empty}  incorrect_password
	Try again type password
	Login to Jenkins  ${empty}  ${empty}
	Try again type password
	Check all login components
	Login to Jenkins  admin  admin
	Log out from Jenkins

Create new user
	Login to Jenkins  admin  admin
	Go to CREATE USER page
	Try create user without all information  abc  ${empty}  ${empty}  ${empty}  ${empty}
	Try create user without all information  ${empty}  abc  ${empty}  ${empty}  ${empty}
	Try create user without all information  abc  def  ${empty}  ${empty}  ${empty}
	Try create user without all information  abc  def  def  ${empty}  ${empty}
	Try create user without all information  abc  def  ${empty}  ${empty}  test@test
	Try create user without all information  abc  def  ghi  ${empty}  test@test
	Try create user without all information  abc  def  def  ${empty}  test@test
