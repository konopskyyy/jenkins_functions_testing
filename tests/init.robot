*** Settings ***
Library  Selenium2Library
Library  Process

Resource  keywords/basic.robot

*** Variables ***
${url}  http://172.17.0.2:8080

*** Test Cases ***

Open jenkins webside
	Open Browser  ${url}  chrome
	Go To    ${url}

	Login to Jenkins

