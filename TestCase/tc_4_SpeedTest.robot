*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}      https://demowebshop.tricentis.com/register


*** Test Cases ***
Registration test
    open browser    ${url}  ${browser}
    maximize browser window
    #only for perticular syntax
    sleep    5

    #for every syntax if we want to wait.
    set selenium speed    2 seconds

    select radio button    Gender   M
    input text    xpath://input[@id='FirstName']    mahesh
    input text    xpath://input[@id='LastName']     aekunde
    input text    xpath://input[@id='Email']    maekunde@gmail.com
    input text    xpath://input[@id='Password']     12345
    input text    xpath://input[@id='ConfirmPassword']      12345

