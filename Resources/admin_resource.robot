*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}      https://admin-demo.nopcommerce.com/
${browser}          chrome

*** Keywords ***

Open My Browser
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed    1

Close My Browser
    close all browsers

Input Username
    [Arguments]    ${username}
    clear element text    //input[@id='Email']
    input text    //input[@id='Email']    ${username}

Input Password
    [Arguments]    ${password}
    clear element text    //input[@id='Password']
    input text    //input[@id='Password']    ${password}

Click to Login
    click element    //button[normalize-space()='Log in']

Varify Error Message
    page should contain    Login was unsuccessful
