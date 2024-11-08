*** Settings ***

Resource    ${EXECDIR}//resources//basic_operations_keywords.robot

Suite Setup    start sikuli process and open calculator
Test Setup    clean calculator   
Suite Teardown     close calculator and stop sikuli process

*** Test Cases ***
Operation 5 + 5
    [Tags]    sum
    do operation 5 + 5
    check if result is 10

Operation 5,1 + 5
    [Tags]    sum
    do operation 5,1 + 5
    check if result is 10,1

Operation 80 - 8
    [Tags]    subtract
    do operation 80 - 8
    check if result is 72

Operation 80 - 8,8
    [Tags]    subtract
    do operation 80 - 8,8
    check if result is 71,2

Operation 7 * 7
    [Tags]    multiplication
    do operation 7 * 7
    check if result is 49

Operation 7,5 * 7,1
    [Tags]    multiplication
    do operation 7,5 * 7,1
    check if result is 53,25

Fail test 7,5 * 7,1
    [Tags]    multiplication
    do operation 7,5 * 7,1
    check if result is 53,24

Operation 7 / 2
    [Tags]    division
    do operation 7 / 2
    check if result is 3,5

