***Settings***
library  Selenium2Library
Library  yaml
Library  OperatingSystem
Library  Collections
Library  RequestsLibrary

***Test Cases***
Test REST API
  log to console  Test
  Create Session  session  url=https://pokeapi.co/api/v2  verify=false
  ${res}  GET on session  session  /pokemon/ditto  
  Log To Console  ${res.content}