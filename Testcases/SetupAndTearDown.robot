*** Settings ***
Library    SeleniumLibrary     
Suite Setup    Log To Console    Open my browser
Suite Teardown    Log To Console    Close browsers

Test Setup    Log To Console    login to application
Test Teardown    Log To Console    logout from application

*** Test Cases ***
TC1 prepaid recharge
    Log To Console    this is prepaid recharge test case
TC2 postpaid recharge
    Log To Console    this is postpaid recharge test case
TC3 search
    Log To Console    this is search test case
TC4 advanced search
    Log To Console    this is advanced search test case