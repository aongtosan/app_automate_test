***Settings***
library  Selenium2Library
Library  yaml
Library  OperatingSystem
Library  Collections
Library  RequestsLibrary
Library  JSONLibrary
Library  String

***Test Cases***
Test REST API
  log to console  Test
  Create Session  session  url=https://pokeapi.co/api/v2  verify=false
  ${res}  GET on session  session  /pokemon/ditto  
  ${result_data}=  Decode Bytes To String  ${res.content}  UTF-8
  Log To Console  ${res.content}
  Create File  ${EXECDIR}/result/scrapped_pokemon_api.json  content=${result_data}  encoding=UTF-8