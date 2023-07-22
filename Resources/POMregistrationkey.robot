*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]    ${siteurl}   ${browser}
    open browser    ${siteurl}  ${browser}
    maximize browser window

Click on register
    click element    ${link_reg}

Enter Firstname
    [Arguments]    ${firstname}
    input text    ${txt_firstname}      ${firstname}

Enter Lastname
    [Arguments]    ${lastname}
    input text    ${txt_lastname}     ${lastname}

Enter Phone
    [Arguments]    ${phonenumber}
    input text    ${txt_phone}     ${phonenumber}

Enter Email
    [Arguments]    ${Email}
    input text    ${txt_email}      ${Email}

Enter Address
    [Arguments]    ${Address}
    input text    ${txt_add}}   ${Address}

Enter City
    [Arguments]    ${city}
    input text    ${txt_city}

Enter postel code
    [Arguments]    ${code}
    input text    ${txt_code}

Select Country
    [Arguments]    ${country}
    select from list by label    ${drop_country}    ${country}

Enter Username
    [Arguments]    ${username}
    input text    ${txt_username}   ${username}

Enter Password
    [Arguments]    ${password}
    input text    ${txt_password}   ${password}

Enter Confirm Pwd
    [Arguments]    ${ConfirPwd}
    input text    ${txt_confpass}   ${ConfirPwd}

Click Signup
    click element    ${btn_signup}

Verify Sucessful Registration Page
    page should contain    Thank you for registering

Click on Continue
    click element    ${btn_continue}


Close my browser
    close all browsers

