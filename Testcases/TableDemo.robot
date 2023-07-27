*** Settings ***
Library    SeleniumLibrary
Resource    Resources.robot

*** Variables ***
${browser}    chrome
${url}    https://testautomationpractice.blogspot.com/

*** Test Cases ***
Table Validation
    Launch Browser    ${url}    ${browser}
    ${rows}    Get Element Count    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr
    ${cols}    Get Element Count    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr/th

    Log To Console    ${rows}
    Log To Console    ${cols}

    Table Column Should Contain    name:BookTable    2    Author
    Table Row Should Contain    name:BookTable    4    Animesh
    Table Cell Should Contain    name:BookTable    4    3    Javascript
    Table Header Should Contain    name:BookTable    Price