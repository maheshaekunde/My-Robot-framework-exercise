# we can make grouping of test case by tagging
*** Settings ***


*** Test Cases ***
TC 1 User registration test
    [Tags]    sanity
    log to console    this is user reg test
    log to console    user reg test is over

TC 2 login test
    [Tags]    regression
    log to console    this is login test
    log to console    login test is over

TC 3 change user setting
    [Tags]    regression
    log to console    this is changing user setting test
    log to console    user setting test is over

TC 3 logout test
    [Tags]    sanity
    log to console    this is logout test
    log to console    logout test is over


#robot --include=sanity Data_driven_testcase/Tagging.robot

#robot --include=regression Data_driven_testcase/Tagging.robot

# Both run(i-include)-- robot -i sanity -i regression Data_driven_testcase/Tagging.robot
# exclude:-   robot -e regression Data_driven_testcase/Tagging.robot