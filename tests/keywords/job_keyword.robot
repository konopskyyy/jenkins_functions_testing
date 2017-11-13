*** Settings ***
Resource  page_object/job_po.robot

*** Variables ***
${empty}

*** Keywords ***

Create new job
	Go to NEW NAME
	Type job name
	Choose FREESTYLE PROJECT
	Confirm creating job
	Confirm job settings
	Check job location

