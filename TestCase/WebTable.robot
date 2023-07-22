*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Table Validation
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    set selenium speed    2

    ${rows}=    get element count    xpath://table[@name='BookTable']/tbody/tr
    ${columns}=     get element count    xpath://table[@name='BookTable']/tbody/tr/th

    log to console     ${rows}
    log to console     ${columns}

    table column should contain    xpath://table[@name='BookTable']     2   Author
    table row should contain       xpath://table[@name='BookTable']     4   Learn JS

    table cell should contain    xpath://table[@name='BookTable']   5   2   Mukesh              #row, column

    table header should contain    xpath://table[@name='BookTable']     BookName