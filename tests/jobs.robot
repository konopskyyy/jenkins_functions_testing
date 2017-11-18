*** Settings ***
Library  Selenium2Library

Resource  keywords/user_keyword.robot
Resource  keywords/job_keyword.robot
Resource  keywords/general.robot

Suite Teardown  Close Browser
Suite Setup  Open jenkins webside  ${url}  chrome

*** Variables ***
${url}  http://172.17.0.2:8080

*** Variables ***
${empty}

*** Test Cases ***

Create new job
	Login to Jenkins  admin  admin
	Create new job

