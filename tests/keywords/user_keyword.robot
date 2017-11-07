*** Settings ***
Resource  page_object/login_po.robot

*** Keywords ***

Login to Jenkins
	[Arguments]  ${login}  ${password}
	Type login and password  ${login}  ${password}
	Confirm login

Log out from Jenkins
	Click logout button

Try again type password
	Click again type password
