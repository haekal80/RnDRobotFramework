*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}    https://demo.nopcommerce.com/

*** Test Cases ***
Testing radio buttons and checkbox
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    1second
    Click Element    xpath://a[contains(text(),'Register')]
    
    # Select Radio Buttons
    Click Element    id:gender-male

    # Select checkbox
    Unselect Checkbox    Newsletter
    Sleep    2

*** Keywords ***