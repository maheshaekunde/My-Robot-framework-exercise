*** Settings ***
Library    SeleniumLibrary



*** Keywords ***
LaunchBrowser
    [Arguments]    ${appurl}    ${appbrowser}
    open browser    ${appurl}      ${appbrowser}
    maximize browser window
    set selenium speed    2
    ${title}=   get title
    [Return]    ${title}