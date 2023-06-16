*** Settings ***
library  Selenium2Library
Library  yaml
Library  OperatingSystem
Library  Collections

Resource  ${EXECDIR}/resources/init.resource

*** Test Cases ***
# 1.Open youtube
#     Open Browser   https://www.youtube.com/  chrome
# 2.Search Unity Game Engine
#     Input Text  //*[@id="search-input"]/input[@id="search"]  unity game engine
log Test
    log to console  ${WORD}