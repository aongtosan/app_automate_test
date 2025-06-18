*** Settings ***
Library   common.desktopAutomate
Library    Process

*** Test Cases ***
Test Application
    ${test}     Test Custom Library
    Log To Console    ${test}  
    Start Application Chrome