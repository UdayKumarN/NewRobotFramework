*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
launchbrowser
    open browser    chrome  executable_path:C:\Drivers\chromedriver.exe  ${url}
   #open browser    ${url}  ${browser}
    maximize browser window

    # creation of user defined keywords with return value.
getbrowsertitle
    [arguments]     ${appurl}   ${appbrowser}
    ${title}=   get title
    [return]    ${title}