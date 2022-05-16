*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
launchbrowser
    #open browser    chrome  executable_path:C:\Drivers\chromedriver.exe  ${url}
    create_webdriver  chrome  executable_path=C:\Drivers\chromedriver.exe

    #open browser    ${url}  ${browser}  ${executable_path}
    go to  ${url}
    maximize browser window

    # creation of user defined keywords with return value.
getbrowsertitle
    [arguments]     ${appurl}   ${appbrowser}
    ${title}=   get title
    [return]    ${title}