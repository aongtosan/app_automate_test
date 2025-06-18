***Settings***
Library  SeleniumLibrary
# library  Selenium2Library
Library  yaml
Library  OperatingSystem
Library  Collections

Resource  ${EXECDIR}/resources/init.resource


***Test Cases***
# Get All Text from webpage
#     ${CHROME_LOCATION}  Normalize path  ${EXECDIR}\\WebBinary\\win64\\chrome\\chrome.exe
#     Open Browser   
#         ...  url=https://www.wongnai.com
#         ...  browser=chrome 
#         # ...  options=${chrome_options}    
#         ...  executable_path=${CHROME_LOCATION}
#     ${text}=  Get Text  //body
#     Log To Console  ${text}
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
    Call Method    ${chrome_options}    add_experimental_option    detach    ${True}
    # Call Method    ${chrome_options}    add_argument    --binary=${EXECDIR}/WebBinary/win64/chrome/chrome.exe
    # Set To Dictionary    ${chrome_options}    detach=True
    ${CHROME_LOCATION}  Normalize path  ${EXECDIR}\\WebBinary\\win64\\chrome\\chrome.exe
    Log To Console  ${CHROME_LOCATION}

    ${chrome_options.binary_location}  Set Variable    ${CHROME_LOCATION}
    # Open Browser   
    #     ...  url=https://www.chatgpt.com/
    #     ...  browser=chrome  
    #     ...  options=${chrome_options}
    #     # ...  options=add_argument("--disable-popup-blocking"); add_argument("--ignore-certificate-errors")
    #     ...  executable_path=${EXECDIR}/WebDriver/win64/chrome/chromedriver.exe
    Open Browser   
        ...  url=https://www.google.com/
        ...  browser=chrome  
        ...  options=${chrome_options}
        # ...  options=add_argument("--disable-popup-blocking"); add_argument("--ignore-certificate-errors")
        ...  executable_path=${EXECDIR}/WebDriver/win64/chrome/chromedriver.exe
    ${text}=  Get Source  
    SeleniumLibrary.Wait Until Element Is Visible  //textarea
    SeleniumLibrary.Input Text  //textarea   hello word 
    # Wait Until Element Is Visible  //textarea[contains(@class,'')]
    # SeleniumLibrary.Input Text  //textarea[contains(@class,'')]   hello word 
    Press Keys  None  ENTER
    Create File  ${EXECDIR}/result/scrapped.html  content=${text}  encoding=UTF-8
    Log To Console  ${text}