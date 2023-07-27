*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url1}    https://www.bing.com/
${url2}    https://www.google.co.id/

*** Test Cases ***
Switch Multiple Browsers
    Open Browser    ${url1}    ${browser}
    Maximize Browser Window
    Sleep    3

    Open Browser    ${url2}    ${browser}
    Maximize Browser Window

    Switch Browser    1
    ${title1}=    Get Title
    Log To Console    ${title1}

    Switch Browser    2
    ${title2}=    Get Title
    Log To Console    ${title2}

    Sleep    3