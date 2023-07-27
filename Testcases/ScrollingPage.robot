*** Settings ***
Library    SeleniumLibrary
Resource    Resources.robot

*** Variables ***
${browser}    headlesschrome
${url}    https://www.countries-ofthe-world.com/flags-of-the-world.html

*** Test Cases ***
Scrolling Page Test
    ${PageTitle}=    Launch Browser    ${url}    ${browser}
    Set Selenium Speed    1
    Log To Console    ${PageTitle}
    Execute Javascript    window.scrollTo(0,1500)
    # Sleep    3
    # Scroll Element Into View    xpath://td[contains(text(),'Japan')]
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)    #End of the page
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)    #Starting point
    Sleep    3