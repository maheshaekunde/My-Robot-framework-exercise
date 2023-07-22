*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url1}  https://demo.guru99.com/test/newtours/register.php
${url2}     https://testautomationpractice.blogspot.com/

*** Test Cases ***
Handling Dropdowns
    open browser    ${url1}  ${browser}
    maximize browser window
    set selenium speed    2seconds

    select from list by label    country     INDIA          #for visible text

    select from list by index    country    2               #for number

    select from list by value    country    AUSTRALIA       #for value attribute

    close browser

Handling Listbox
    open browser    ${url2}     ${browser}
    maximize browser window
    set selenium speed    2

    select from list by label    colors     Green

    select from list by label    colors     White

    unselect from list by label    colors     Green
