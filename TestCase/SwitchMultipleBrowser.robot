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


#    switch through alias name
    Open Browser    https://google.com    chrome    alias=Google
    Open Browser    https://bing.com      edge      alias=Bing

    Switch Browser    Google
    Log To Console    Now controlling Google browser

    Switch Browser    Bing
    Log To Console    Now controlling Bing browser

*** Keywords ***
