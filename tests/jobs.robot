*** Settings ***
Library  Selenium2Library

Resource  keywords/user_keyword.robot
Resource  keywords/job_keyword.robot

*** Variables ***
${url}  http://172.17.0.2:8080

*** Variables ***
${empty}

*** Test Cases ***

Open jenkins webside
	Open Browser  ${url}  chrome
	Go To    ${url}

Create new job
	Login to Jenkins  admin  admin
	Create new job

