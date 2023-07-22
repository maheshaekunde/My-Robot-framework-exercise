*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${browser}      chrome
${url}     https://demowebshop.tricentis.com/register

*** Test Cases ***
Implicit wait
    open browser    ${url}      ${browser}
    maximize browser window

    set selenium implicit wait    10 seconds            #default time is 0 sec

    select radio button     Gender      M
    input text    name:FirstName    mahesh
    input text    name:LastName     aekunde
    input text    name:Email        maekunde@gmail.com
    input text    name:Password     12345
    input text    name:ConfirmPassword  12345

