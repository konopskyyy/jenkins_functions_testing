*** Settings ***
Library  Selenium2Library

*** Variables ***
${url}  http://172.17.0.2:8080

*** Test Cases ***
Open jenkins webside
	Open Browser  ${url}  chrome

	Go To    ${url}

	Close Browser
