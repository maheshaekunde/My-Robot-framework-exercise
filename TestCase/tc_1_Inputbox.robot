*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/


*** Test Cases ***
TestingEmailBox         #user define keywords
    open browser    ${url}  ${browser}
    maximize browser window
    title should be     nopCommerce demo store
    click link     xpath://a[normalize-space()='Log in']
    ${"email_txt"}  set variable    xpath://input[@id='Email']

    element should be visible    ${"email_txt"}         #positive testing
    element should be enabled    ${"email_txt"}

    #element should not be visible    ${"email_txt"}            #negetive testing

    input text    ${"email_txt"}    maekunde@gmail.com
    sleep    5
    clear element text    ${"email_txt"}
    sleep    3


TestingPasswordBox
    ${"password_text"}  set variable    xpath://input[@id='Password']

    element should be visible   ${"password_text"}
    element should be enabled    ${"password_text"}

    input text    ${"password_text"}    mahesh123
    sleep    5
    clear element text    ${"password_text"}
    sleep    3

    close browser

*** Keywords ***




