*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Get All Links test
    open browser    https://demo.opencart.com/  chrome
    maximize browser window

    ${Alllinkscount}=    get element count    xpath://a

    log to console     ${Alllinkscount}

# creating list by @ and printing all links

    @{Linkitems}    create list


    FOR    ${i}     IN RANGE    1   ${Alllinkscount}+1
    ${linktext}     get text    xpath:(//a)[${i}]
    log to console    ${linktext}
    END