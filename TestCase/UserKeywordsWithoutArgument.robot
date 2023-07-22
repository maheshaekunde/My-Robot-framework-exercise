*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://practice.automationtesting.in/my-account/\

*** Test Cases ***
TC1
    LaunchBrowser
    input text    xpath://input[@id='reg_email']    mahesh
    input text    xpath://input[@id='reg_password']     12345


*** Keywords ***
LaunchBrowser
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed    2
