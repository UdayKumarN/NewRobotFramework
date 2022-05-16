*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/resources.robot
*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/
${executable_path}  C:\Drivers\chromedriver.exe
*** Test Cases ***
Test radiobutton
    [Documentation]  verify output for Registration radio and dropdown
    [Tags]    DEBUG
    #open browser    ${url}  ${browser}
    #maximize browser window
    launchbrowser
    ${pagetitle}=   getbrowsertitle  ${url}  ${browser}  # calling to getbrowsertitle keyword with arguments returned to pagetitle variable
    log to console  ${pagetitle}    #print the title in console window
    log   ${pagetitle}      #print the title in logs report
    set selenium implicit wait  10  #implicit wait
    click link     xpath://a[contains(text(),'Register')]
    select radio button     Gender     gender-male
    input text  id:FirstName        UdayKumar
    input text  id:LastName        narsingoju
    select from list by value   DateOfBirthDay  12
    select from list by label   DateOfBirthMonth    December
    select from list by index   DateOfBirthYear     86
    sleep  3
    Close Browser