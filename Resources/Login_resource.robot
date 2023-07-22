*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${Login URL}        https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${browser}      chrome

*** Keywords ***
Open my browser
    open browser    ${Login URL}    ${browser}
    maximize browser window

close my all browsers
    close all browsers

Open Login Page
    go to   ${Login URL}


Input Username
    [Arguments]    ${username}
    input text    id:Email      ${username}

Input Password
    [Arguments]    ${password}
    input text    id:Password   ${password}


Click Login Button
    click element    xpath://button[normalize-space()='Log in']

Click Logout Button
    click link    Logout

Error massage
    page should contain    Login was unsuccessful.

Dashboard visible
    page should contain    Dashboard