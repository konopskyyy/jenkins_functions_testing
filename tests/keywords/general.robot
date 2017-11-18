*** Variables ***
${empty}

*** Keywords ***

Open jenkins webside
	[Arguments]  ${url}  ${browser}
	Open Browser  ${url}  ${browser}
	Maximize Browser Window
