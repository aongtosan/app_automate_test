*** Settings ***
Library    desktopAutomate

*** Test Cases ***
Test Application
# Open Calculator
#     Open Application    calc.exe
#     ${window}    Set Active Window    Calculator
#     ${result}    Click Button    7
#     Should Be Equal As Integers    ${result}    7