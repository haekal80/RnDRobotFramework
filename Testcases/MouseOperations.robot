*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://swisnl.github.io/jQuery-contextMenu/demo.html

*** Test Cases ***
Mouse Actions
    #Right click action
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Open Context Menu    xpath://span[contains(text(),'right click me')]
    Sleep    3

    #Double click action
    Go To    https://testautomationpractice.blogspot.com/
    Double Click Element    xpath://button[contains(text(),'Copy Text')]
    Sleep    3

    #Drag and drop action
    Go To    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Drag And Drop    id:box2    id:box106
    Drag And Drop    id:box3    id:box101
    Drag And Drop    id:box4    id:box107
    Sleep    3