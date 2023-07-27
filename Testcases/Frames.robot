*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html

*** Test Cases ***
Testing Frames
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Select Frame    packageListFrame
    Click Link    org.openqa.selenium.bidi
    Sleep    3
    Unselect Frame

    Select Frame    packageFrame
    Click Link    BrowsingContextInspector
    Sleep    3
    Unselect Frame

    Select Frame    classFrame
    Click Link    Help
    Sleep    3

    Close Browser