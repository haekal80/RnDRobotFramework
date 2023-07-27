*** Settings ***
Suite Setup    Log To Console    Open my browser
Suite Teardown    Log To Console    Close browsers

Test Setup    Log To Console    login to application
Test Teardown    Log To Console    logout from application

# robot --include=sanity  Testcases\Tagging.robot | untuk 1 tag
# robot -i sanity -i regression  Testcases\Tagging.robot | untuk lebih dari 1 tag
# robot -e sanity  Testcases\Tagging.robot | untuk mengecualikan 1 tag yang diinput
*** Test Cases ***
TC1 prepaid recharge
    [Tags]    sanity
    Log To Console    this is prepaid recharge test case
TC2 postpaid recharge
    [Tags]    regression
    Log To Console    this is postpaid recharge test case
TC3 search
    [Tags]    sanity
    Log To Console    this is search test case
TC4 advanced search
    [Tags]    regression
    Log To Console    this is advanced search test case