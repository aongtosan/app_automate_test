***Settings***
Library  SeleniumLibrary
# library  Selenium2Library
Library  yaml
Library  OperatingSystem
Library  Collections

Resource  ${EXECDIR}/resources/init.resource


***Test Cases***
Get All Text from webpage
    Open Browser   
        ...  url=https://www.wongnai.com/?gclid=Cj0KCQjwmICoBhDxARIsABXkXlJbRYSPei7jixyXJuxPmz_Crpa7RXQoUy_OwajHwV81UlNUIceZlnEaAjlMEALw_wcB  
        ...  browser=chrome 
        # ...  options=${chrome_options}    
        ...  executable_path=${EXECDIR}/WebDriver/win64/chrome/chromedriver.exe
    ${text}=  Get Text  //body
    Log To Console  ${text}
Get All Element from webpage
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver.chrome.options'].Options()    sys
    # Call Method    ${chrome_options}    add_argument    --no-sandbox
    # Call Method    ${chrome_options}    add_argument    --disable-dev-shm-usage
    # Call Method    ${chrome_options}    add_argument    --disable-gpu
    # Call Method    ${chrome_options}    add_argument    --headless
    # Call Method    ${chrome_options}    add_argument    --disable-infobars
    # Call Method    ${chrome_options}    add_argument    --disable-extensions
    # Call Method    ${chrome_options}    add_argument    --disable-notifications
    # Call Method    ${chrome_options}    add_argument    --disable-popup-blocking
    # Call Method    ${chrome_options}    add_argument    --ignore-certificate-errors
    # Call Method    ${chrome_options}    add_argument    --disable-features=UseOzonePlatform
    # Call Method    ${chrome_options}    add_argument    --disable-features=NetworkService

    # Call Method    ${chrome_options}    add_argument    --binary=${EXECDIR}/WebBinary/win64/chrome/chrome.exe
    ${CHROME_LOCATION}  Normalize path  ${EXECDIR}\\WebBinary\\win64\\chrome\\chrome.exe

    ${chrome_options.binary_location}  Set Variable    ${CHROME_LOCATION}
    Open Browser   
        ...  url=https://www.wongnai.com/?gclid=Cj0KCQjwmICoBhDxARIsABXkXlJbRYSPei7jixyXJuxPmz_Crpa7RXQoUy_OwajHwV81UlNUIceZlnEaAjlMEALw_wcB  
        ...  browser=chrome  
        ...  options=${chrome_options}
        # ...  options=add_argument("--disable-popup-blocking"); add_argument("--ignore-certificate-errors")
        ...  executable_path=${EXECDIR}/WebDriver/win64/chrome/chromedriver.exe
    ${text}=  Get Source  
    Create File  ${EXECDIR}/result/scrapped.html  content=${text}  encoding=UTF-8
    # Log To Console  ${text}
W