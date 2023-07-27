*** Settings ***
Library    SeleniumLibrary
Resource    Resources/LoginResrouce.robot
Suite Setup    Open my browser
Suite Teardown    Close browsers
Test Template    Invalid Login

*** Test Cases ***            username            password
Right user empty password    admin@yourstore.com    ${EMPTY}
Right user wrong password    admin@yourstore.com    password
Wrong user right password    xyz@yourstore.com      admin
Wrong user empty password    xyz@yourstore.com      ${EMPTY}
Wrong user wrong password    xyz@yourstore.com      password
Empty user empty password    ${EMPTY}                ${EMPTY}

*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    Input credential    ${username}    ${password}
    Click login button
    Error login message