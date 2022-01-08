*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/resources.robot
*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/
${JOB_RUN_DATE_YYYYMMDD}
${year} =  ${JOB_RUN_DATE_YYYYMMDD}[:4]
${month} =  ${JOB_RUN_DATE_YYYYMMDD}[4:6]
${day} =  ${JOB_RUN_DATE_YYYYMMDD}[6:]
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
    #log to console  ${JOB_RUN_DATE_YYYYMMDD}
    #log to console  ${month}
    #log to console  ${day}
    Close Browser

   #robot -d .\Results\ -v JOB_RUN_DATE_YYYYMMDD:20220107 .\Test_Cases\Register.robot