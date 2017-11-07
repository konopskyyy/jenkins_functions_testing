*** Settings ***
Resource  page_object/login_po.robot

*** Keywords ***

Login to Jenkins
	[Arguments]  ${login}  ${password}
	Click login button
	Type login and password  ${login}  ${password}
	Confirm login

Log out from Jenkins
	Click logout button

Try again type password
	Click again type password

Check all login components
	Page Should Contain Element  j_username
	Page Should Contain Element  j_password 	
	Page Should Contain Element  yui-gen1-button
	Page Should Contain Element  remember_me
