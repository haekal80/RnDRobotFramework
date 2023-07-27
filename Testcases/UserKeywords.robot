*** Settings ***
Library    SeleniumLibrary
Resource    Resources.robot

*** Variables ***
${browser}    chrome
${url}    https://demo.guru99.com/test/newtours/

*** Test Cases ***
Test case 1
    ${returnTitle}=    Launch Browser    ${url}    ${browser}
    Input Text    name:userName    mercury
    Input Password    name:password    mercury
    Log To Console    ${returnTitle}
    Sleep    3

*** Keywords ***
