*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://demo.nopcommerce.com/

*** Test Cases ***
Login Test
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Login to Application
    Close Browser


*** Keywords ***
Login to Application
    Click Element    xpath://a[contains(text(),'Log in')]
    Input Text    id:Email    haekal@mail.com
    Input Password    id:Password    password
    Click Element    xpath://button[contains(text(),'Log in')]
    Sleep    3