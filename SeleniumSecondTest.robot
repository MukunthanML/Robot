*** Settings ***
Documentation  Seleniumtest to open website/AUT
Resource  Locators.robot
Library  SeleniumLibrary
Library  OperatingSystem


*** Variables ***
${driver_path}=  ${CURDIR}\\drivers\\chromedriver.exe
${BROWSER}  chrome
${URL}  https://demoqa.com/automation-practice-form


*** Test Cases ***
Selenium Test
    Open Browser    ${URL}  browser=${BROWSER}    executable_path=${driver_path}
    Input Text      ${LOC_FIRST_NAME}    Mukunthan
    Input Text      ${LOC_LAST_NAME}    Ragavan
    Input Text      ${LOC_EMAIL}    test@gmail.com
    Click Element   ${LOC_MALE}
    Input Text      ${LOC_MOBILE}   1234567890
    Submit Form     ${LOC_FORM}




#https://robotframework.org/robotframework/2.1.2/libraries/OperatingSystem.html
#https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html

