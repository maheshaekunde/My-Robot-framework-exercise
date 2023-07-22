*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/admin_resource.robot

Suite Setup    Open My Browser
Suite Teardown    Close My Browser
Test Template    Invalid Inputs

*** Test Cases ***
VALID USERNAME EMPTY PASSWORD           admin@yourstore.com         ${EMPTY}
EMPTY USERNAME VALID PASSWORD           ${EMPTY}                    admin
VALID USERNAME INVALID PASSWORD         admin@yourstore.com         adm
INVALID PASSWORD VALID USERNAME         adm                         admin@yourstore.com
INVALID USERNAME INVALID PASSWORD       ad@yourstore.com            adm


*** Keywords ***
Invalid Inputs
    [Arguments]    ${username}      ${password}
    Input Username                  ${username}
    Input Password                  ${password}
    Click to Login
    Varify Error Message
