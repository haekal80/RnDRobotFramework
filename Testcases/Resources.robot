*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://demo.guru99.com/test/newtours/

*** Keywords ***
Launch Browser
    [Arguments]    ${appurl}    ${appbrowser}
    Open Browser    ${appurl}    ${appbrowser}
    Maximize Browser Window
    # ${title}=    Get Title
    # [Return]    ${title}