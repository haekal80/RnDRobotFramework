*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url1}    https://www.bing.com/
${url2}    https://www.google.co.id/

*** Test Cases ***
Navigation Test
    Open Browser    ${url1}    ${browser}
    Maximize Browser Window
    ${loc}=    Get Location
    Log To Console    ${loc}

    Go To    ${url2}
    ${loc}=    Get Location
    Log To Console    ${loc}

    Go Back
    ${loc}=    Get Location
    Log To Console    ${loc}
