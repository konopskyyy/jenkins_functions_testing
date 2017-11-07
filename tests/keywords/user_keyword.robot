*** Settings ***
Resource  page_object/login_po.robot

*** Keywords ***

Login to Jenkins
	Type login and password
	Confirm login

Log out from Jenkins
	Click logout button
