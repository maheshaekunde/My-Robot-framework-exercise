*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot



*** Variables ***
${browser}      chrome
${url}      https://practice.automationtesting.in/my-account/\

#only with argument

#*** Test Cases ***
#TC1
#    LaunchBrowser   ${url}  ${browser}
#    input text    xpath://input[@id='reg_email']    mahesh
#    input text    xpath://input[@id='reg_password']     12345
#
#
#*** Keywords ***
#LaunchBrowser
#    [Arguments]    ${appurl}    ${appbrowser}
#    open browser    ${appurl}      ${appbrowser}
#    maximize browser window
#    set selenium speed    2



#when we want to return

*** Test Cases ***
TC1
    ${pagetitle}=   LaunchBrowser   ${url}  ${browser}
    log to console  ${pagetitle}        #to print in terminal
    log    ${pagetitle}                 #to print in report
    input text    xpath://input[@id='reg_email']    mahesh
    input text    xpath://input[@id='reg_password']     12345


#*** Keywords ***
#LaunchBrowser
#    [Arguments]    ${appurl}    ${appbrowser}
#    open browser    ${appurl}      ${appbrowser}
#    maximize browser window
#    set selenium speed    2
#    ${title}=   get title
#    [Return]    ${title}


#putting keywords in resources folder