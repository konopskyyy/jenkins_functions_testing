*** Variables ***
${empty}

*** Keywords ***

Go to NEW NAME
	Click Element  link=New Item

Type job name
	Input Text  name  test_job

Choose FREESTYLE PROJECT
	Click image  //*[@id="j-add-item-type-standalone-projects"]/ul/li[1]/div[2]/img

Confirm creating job
	Click Button  ok-button

Confirm job settings
	Click Button  yui-gen38-button

Check job location
	${getCurrentLocation} =  Get Location
	Should be equal as strings  ${getCurrentLocation}  ${url}/job/test_job/

