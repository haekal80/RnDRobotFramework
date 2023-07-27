*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Test Cases ***
Login Test
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Wait Until Element Is Visible    name:username
    Input Text    name:username    Admin
    Input Password    name:password    admin123
    Sleep    3
    # Capture Element Screenshot    xpath://*[@id="app"]/div[1]/div/div[1]/div/div[1]/img    C:/Users/haeka/Downloads/ATS/IBID/Automation/RND/Testcases/Logo.png
    # Capture Page Screenshot    C:/Users/haeka/Downloads/ATS/IBID/Automation/RND/Testcases/TC.png
    Capture Element Screenshot    xpath://*[@id="app"]/div[1]/div/div[1]/div/div[1]/img    Logo2.png
    Capture Page Screenshot    TC2.png
    