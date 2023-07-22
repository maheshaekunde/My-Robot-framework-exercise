*** Settings ***
Library    SeleniumLibrary


*** Variables ***


*** Test Cases ***
Navigation Test
    open browser    https://www.google.com/     chrome
    sleep    3
    ${loc}=     get location
    log to console      ${loc}

    go to   https://www.bing.com/
    ${loc}=     get location
    log to console    ${loc}

    sleep    3
    go back
    ${loc}=     get location
    log to console      ${loc}

    sleep    3




*** Keywords ***
