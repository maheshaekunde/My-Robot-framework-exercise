*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Multibrowser

    open browser    https://www.google.com/     chrome
    set selenium speed    3 seconds
    maximize browser window

    open browser    https://www.bing.com        chrome
    maximize browser window

    switch browser    1

    ${title}=   get title
    log to console    ${title}

    switch browser    2
    ${title}=   get title
    log to console    ${title}





*** Keywords ***
