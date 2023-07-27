*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    ../TDD2.xlsx    sheet_name=Sheet1
Resource   Resources/LoginResrouce.robot

Suite Setup    Open my browser
Suite Teardown    Close browsers
Test Template    Invalid Login

*** Test Cases ***
LoginTest With Excel using    ${username} and  ${password}

*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    Input credential    ${username}    ${password}
    Click login button
    Error login message