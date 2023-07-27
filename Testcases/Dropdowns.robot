*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}    https://demo.nopcommerce.com/

*** Test Cases ***
Handling dropdowns and lists
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    1second
    Click Element    xpath://a[contains(text(),'Register')]

    Select From List By Value    name:DateOfBirthDay    24
    Select From List By Index    name:DateOfBirthMonth    1
    Sleep    2