*** Settings ***

Suite Setup    log to console   Opening Browser
Suite Teardown    log to console    Closing Browser

Test Setup    log to console    Login to appplication
Test Teardown    log to console     Logout from application


*** Test Cases ***
TC 1 Prepaid Recharge
    log to console    this is prepaid recharge testcase

TC 2 Postpaid recharge
    log to console     this is postpaid recharge testcase

TC 3 search
    log to console    this is search test case

TC 4 Advanced search
    log to console    this is adv search testcase

