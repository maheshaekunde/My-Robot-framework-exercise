*** Test Cases ***
For loop 1
    FOR    ${i}    IN RANGE    1   10
    Log to console    ${i}
    END



#For loop 2
#    FOR    ${i}     IN    1  2   3   4   5   6
#    log to console    ${i}
#    END


#For loop 3 with list
#    @{items}    create list    1    2   3   4
#    FOR    ${i}     IN      @{items}
#    log to console    ${i}
#    END
#


For loop 4 with Exit
    @{items}    create list    1    2   3   4
    FOR    ${i}     IN      @{items}
    log to console    ${i}
    exit for loop if    ${i}==3
    END


