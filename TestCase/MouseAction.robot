*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Mouse Action
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html   chrome
    maximize browser window
    set selenium speed  2 seconds

    #to perform right click
    open context menu    xpath://span[@class='context-menu-one btn btn-neutral']


    #Double click action
    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    xpath://button[normalize-space()='Copy Text']

    #Drag and Drop
    go to    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window
    drag and drop    id:box6    id:box106






*** Keywords ***

