*** Settings ***
Library    SeleniumLibrary



*** Variables ***
#${browser}      chrome
#${url}          https://demowebshop.tricentis.com/register


*** Test Cases ***
closealltest
    open browser    https://demowebshop.tricentis.com/register  chrome
    maximize browser window

    open browser    https://practice.automationtesting.in/      chrome
    maximize browser window

#    close browser           #closes only recent browser

    close all browsers      #closes all browser

