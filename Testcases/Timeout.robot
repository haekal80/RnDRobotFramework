*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}    https://demowebshop.tricentis.com

*** Test Cases ***
RegTest
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Timeout    10 seconds
    Wait Until Page Contains    Welcome to our store
    Click Element    xpath://a[contains(text(),'Register')]
    Select Radio Button    Gender    F
    Input Text    id:FirstName    Muhammad Haekal
    Input Text    id:LastName    Pangestu
    Input Text    id:Email    haekalpangestu@gmail.com
    Input Password    id:Password    password
    Input Password    id:ConfirmPassword    password