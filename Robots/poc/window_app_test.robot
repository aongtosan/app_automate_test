*** Settings ***
Library   ${EXECDIR}/libs/desktopAutomate.py

*** Test Cases ***
Test Application
    ${test}     Test Custom Library
    Log To Console    ${test}  
    # test_custom_libs
    # Test Custom Library
# Open Calculator
#     Open Application    calc.exe
#     ${window}    Set Active Window    Calculator
#     ${result}    Click Button    7
#     Should Be Equal As Integers    ${result}    7