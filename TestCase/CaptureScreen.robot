*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
capture screenshot
    open browser    https://automationexercise.com/login      chrome
    maximize browser window
    set selenium speed    2 seconds

    input text    xpath://input[@placeholder='Name']    mahesh
    input text    //input[@data-qa='signup-email']    maekunde@gmal.com

    capture element screenshot    //img[@alt='Website for automation practice']     C:/Users/Admin/PycharmProjects/Robotautomation/logo.png
    capture page screenshot    C:/Users/Admin/PycharmProjects/Robotautomation/page.png

    sleep    5

    #if location is given then it will save in current project location



*** Keywords ***

