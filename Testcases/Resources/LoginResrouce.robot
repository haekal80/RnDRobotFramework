*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://admin-demo.nopcommerce.com/login

*** Keywords ***
Open my browser
    Open browser    ${url}    ${browser}
    Maximize Browser Window

Close browsers
    Close All Browsers

Input credential
    [Arguments]    ${username}    ${password}
    Input Text    xpath://input[@id='Email']    ${username}
    Input Password    //input[@id='Password']    ${password}

Click login button
    Click Button    //button[contains(text(),'Log in')]

Click logout button
    Click Link    xpath://a[contains(text(),'Logout')]

Error login message
    Page Should Contain    Login was unsuccessful

Dashboard Page
    Page Should Contain    Dashboard