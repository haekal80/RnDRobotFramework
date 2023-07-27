*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Test Cases ***
Login Successfully
    Open my browser
    Input credential    username    password
    Click login button
    Verify login successful
    Sleep    3
    Close browsers