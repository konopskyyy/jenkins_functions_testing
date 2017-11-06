*** Settings ***
Library  Selenium2Library
Library  Process

*** Variables ***
${url}  http://172.17.0.2:8080

*** Test Cases ***

Open jenkins webside
	Open Browser  ${url}  chrome
	Go To    ${url}

	Input Text  j_username  admin
	Input Text  j_password  admin
	Click Button  yui-gen1-button
	Click Link  Nowy Projekt
