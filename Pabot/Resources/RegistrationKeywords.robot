*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://demo.guru99.com/test/newtours/

*** Keywords ***
Open my browser
    Open browser    ${url}    ${browser}
    Maximize Browser Window

Close browsers
    Close All Browsers

Click registration button
    Click Link    xpath://a[contains(text(),'REGISTER')]