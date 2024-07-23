*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${browser}  chrome
${url}  https://demo.guru99.com/test/radio.html


*** Test Cases ***

Testing Radio buttons and check boxes
    open browser   ${url}    ${browser}
    set selenium speed    2seconds
    maximize browser window

    #selecting radio buttons
    select radio button    webform  Option 1        # value of name attribute and value of value attribute
    select radio button    webform  Option 2        # value of name attribute and value of value attribute
    select radio button    webform  Option 3        # value of name attribute and value of value attribute

#selecting checkbox button
    select checkbox    checkbox1            #Value of value attribute
    select checkbox    checkbox2
    select checkbox    checkbox3

    unselect checkbox   checkbox1
    unselect checkbox    checkbox2


