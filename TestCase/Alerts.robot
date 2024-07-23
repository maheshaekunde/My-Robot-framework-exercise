*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://testautomationpractice.blogspot.com/

*** Test Cases ***
HandlingAlerts
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed    2 seconds
    click element    xpath://button[normalize-space()='Confirm Box']

    handle alert    LEAVE

#    #to accept alert
#    handle alert    accept
#
#    #to cancle alert
#    handle alert    dismiss
#
#    #to keep as it is
#    handle alert    leave
#
#    #Varify text written on alert bar
#    alert should be present    Press a button!


