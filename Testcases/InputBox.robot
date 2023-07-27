*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://demo.nopcommerce.com/
${email_txt}    id:Email

*** Test Cases ***
TestingInputBox
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Title Should Be    nopCommerce demo store
    Click Element    xpath://a[contains(text(),'Log in')]
    # Element Should Be Visible    ${email_txt}
    # Element Should Be Enabled    ${email_txt}
    Element Should Not Be Visible    ${email_txt}
    Input Text    ${email_txt}    haekal@mail.com
    Sleep    5
    Clear Element Text    ${email_txt}
    Sleep    3
    Close Browser

*** Keywords ***