*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/admin_resource.robot
Library    DataDriver    ../TestData/testdata.xlsx
Suite Setup    Open My Browser
Suite Teardown    Close My Browser
Test Template    Invalid Inputs
Library    SeleniumLibrary
Resource    ../Resources/admin_resource.robot
Library    DataDriver    ../TestData/testdata.xlsx

Suite Setup    Open My Browser
Suite Teardown    Close My Browser
Test Template    Invalid Inputs
*** Test Cases ***
Testin By Excel     using   ${username}     ${password}


*** Keywords ***
Invalid Inputs
    [Arguments]    ${username}      ${password}
    Input Username                  ${username}
    Input Password                  ${password}
    Click to Login
    Varify Error Message
