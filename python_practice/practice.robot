*** Settings ***


*** Variables ***



*** Test Cases ***
Swap and print value
    ${a}    set variable    10
    ${b}    set variable    20
    Swap Values     ${a}    ${b}
    log to console  Value after swapping:   ${a}   ${b}


*** Keywords ***
Swap Values
    [Arguments]    ${value1}    ${value2}
    ${temp}     set variable    ${value1}
    ${value1}   set variable    ${value2}
    ${value2}   set variable    ${temp}

