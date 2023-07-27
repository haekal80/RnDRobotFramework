*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/RegistrationKeywords.robot

*** Test Cases ***
Registration Successfully
    Open my browser
    Click registration button
    Sleep    3
    Close browsers