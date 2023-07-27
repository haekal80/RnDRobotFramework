*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://demo.guru99.com/test/newtours/

*** Keywords ***
Open my browser
    Open browser    ${url}    ${browser}
    Maximize Browser Window

Close browsers
    Close All Browsers

Input credential
    [Arguments]    ${username}    ${password}
    Input Text    name:userName    ${username}
    Input Password    name:password     ${password}

Click login button
    Click Link    name:submit

Verify login successful
      Page Should Contain    Login Successfully