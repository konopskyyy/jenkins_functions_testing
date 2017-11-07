*** Settings ***
Resource  page_object/login.robot

*** Keywords ***

Login to Jenkins
	Type login and password
	Confirm login
