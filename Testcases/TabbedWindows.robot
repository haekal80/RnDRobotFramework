*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://demo.automationtesting.in/Windows.html

*** Test Cases ***
TabbedWindows
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Timeout    10 seconds
    Click Button    xpath://*[@id="Tabbed"]/a/button
    Switch Window    title=Selenium
    Wait Until Element Is Visible    xpath://*[@id="main_navbar"]/ul/li[6]/a/span
    Click Element    xpath://*[@id="main_navbar"]/ul/li[6]/a/span
    