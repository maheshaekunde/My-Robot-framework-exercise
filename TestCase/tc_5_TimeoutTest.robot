*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}      https://demowebshop.tricentis.com/register


*** Test Cases ***
Registration test
    open browser    ${url}  ${browser}
    maximize browser window

#waitinng until given text is visible and if text is not available it will wait till 5 seconds

    # set selenium timeout    10 seconds      #if text is not visible
    #    instead of waiting defult 5 sec it will wait till given time
    wait until element contains    Register

    select radio button    Gender   M
    input text    xpath://input[@id='FirstName']    mahesh
    input text    xpath://input[@id='LastName']     aekunde
    input text    xpath://input[@id='Email']    maekunde@gmail.com
    input text    xpath://input[@id='Password']     12345
    input text    xpath://input[@id='ConfirmPassword']      12345

