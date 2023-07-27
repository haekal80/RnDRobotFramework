*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://testautomationpractice.blogspot.com

*** Test Cases ***
Testing Alerts
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Click Button    xpath://button[contains(text(),'Click Me')]
    Sleep    3
    # Handle Alert    ACCEPT
    # Handle Alert    DISMISS
    # Handle Alert    LEAVE
    Alert Should not Be Present    Press a button!
    Sleep    3