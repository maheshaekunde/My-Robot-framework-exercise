*** Settings ***
Documentation    Basic Search
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
TC Loop1
    FOR     ${r}    IN RANGE    1   6
        FOR     ${c}    IN RANGE    1     ${r}
            log to console    ${c}
        END
        log to console    ${EMPTY}
    END




*** Keywords ***


