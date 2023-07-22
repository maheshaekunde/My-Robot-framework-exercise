*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/POMregistrationkey.robot


*** Variables ***
${browser}      chrome
${Url}      https://demo.guru99.com/test/newtours/index.php

*** Test Cases ***
Registration
    Open my Browser    ${Url}   ${browser}
    Click on register
    Enter Firstname     Devid
    Enter Lastname      Scott
    Enter Phone     1234567890
    Enter Email     dev@gmail.com

    Enter City      New York
    Enter postel code   115003
    Select Country  UNITED STATES
    Enter Username      Dscott
    Enter Password      12345
    Enter Confirm Pwd   12345
    Click Signup
    Verify Sucessful Registration Page
    Close my browser

