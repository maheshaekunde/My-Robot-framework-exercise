*** Settings ***
Library    SeleniumLibrary

Library    SeleniumLibrary
*** Variables ***
#${browser}  chrome
#${url}  https://demo.nopcommerce.com/


*** Test Cases ***
LoginTest
    open browser    https://demo.nopcommerce.com/       headlesschrome
    loginToApplication
    close browser





*** Keywords ***
loginToApplication              #user define keeyword
    click link    xpath://a[normalize-space()='Log in']
    input text    id:Email  pavantraining@gmail.com
    input text    id:Password   Test@123
    click button    xpath://button[normalize-space()='Log in']
