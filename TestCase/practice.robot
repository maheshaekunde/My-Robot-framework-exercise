*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    ${EXECDIR}/TestData/testdata.xlsx

*** Variables ***
${BROWSER}    chrome
${URL}        https://automationexercise.com/login
${label}      Name

*** Test Cases ***
Login Test From Excel
    [Arguments]    ${username}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    ${input_exact}=    Set Variable    //input[contains(@placeholder,'${label}')]
    Wait Until Element Is Visible    ${input_exact}
    Input Text    ${input_exact}    ${username}
    Sleep    2s
    Close Browser
