*** Settings ***
Library    SeleniumLibrary
Resource    Resources.robot

*** Variables ***
${browser}    chrome
${url}    https://demo.guru99.com/test/newtours/

*** Test Cases ***
Get All Link Test
    Launch Browser    ${url}    ${browser} 
    ${AllLinkCounts}    Get Element Count    xpath://a
    Log To Console    ${AllLinkCounts}

    FOR    ${i}    IN RANGE    1    ${AllLinkCounts}+1
        ${LinkText}=    Get Text    xpath:(//a)[${i}]
        Log To Console    ${LinkText}
        
    END