*** Settings ***
Documentation    Load keywords to do basic math operations

Resource    ${EXECDIR}//resources//base_keywords.robot
Library    String

*** Variables ***


*** Keywords ***

do operation ${number_1} ${operation} ${number_2}
    Type With Modifiers    ${number_1}
    Type With Modifiers    ${operation}
    Type With Modifiers    ${number_2}
    Type With Modifiers    =

check if result is ${result}
    ${read_value}=    read region of 4 x, 118 y, 1036 w, 93 h.
    ${stripped}    String.Strip String    ${read_value}
    ${cleaned_string}    String.Remove String Using Regexp   ${stripped}    [^0-9,]+
    Should Be Equal   ${result}    ${cleaned_string}


