*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py
Library     ../custome_keyword/Shop.py

*** Keywords ***
Open my browser
    [Arguments]    ${SiteURL}   ${Browser}
    open browser    ${SiteURL}      ${Browser}
    maximize browser window

Enter Username
    [Arguments]    ${username}
    input text     ${txt_loginUsername}     ${username}


Enter Password
    [Arguments]    ${password}
    input text    ${txt_loginPassword}    ${password}

Click Signin
    click button    ${btn_signin}


Verify succesful login
    title should be    Login: Mercury Tours

Close my broswer
    close all browsers