*** Settings ***
Documentation  Seleniumtest to open website/AUT
Library  SeleniumLibrary
Library  OperatingSystem

*** Variables ***
${driver_path}=  ${CURDIR}\\drivers\\chromedriver.exe

*** Test Cases ***
Selenium Test
    Open Browser    https://demoqa.com/automation-practice-form   browser=Chrome      executable_path=${driver_path}
    Input Text      id=firstName     Mukunthan
    Input Text      id=lastName     Ragavan
    Input Text      id=userEmail     test@gmail.com
#    Select Radio Button  xpath=//label[contains(text(),'Male')]
    Select Radio Button  Gender     Male

    Input Text      id=userNumber   1234567890
    Submit Form     id=userForm




#https://robotframework.org/robotframework/2.1.2/libraries/OperatingSystem.html
#https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html

