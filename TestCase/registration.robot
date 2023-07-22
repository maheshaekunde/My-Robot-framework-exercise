*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://automationexercise.com/



*** Test Cases ***
RegisterUser
    open browser    ${url}  ${browser}
    maximize browser window
    title should be    Automation Exercise
    click element    xpath://a[normalize-space()='Signup / Login']
    element should be visible    New User Signup!





*** Keywords ***

