*** Settings ***
Documentation  Seleniumtest to open website/AUT
#https://robotframework.org/robotframework/2.1.2/libraries/OperatingSystem.html
#https://robotframework.org/SeleniumLibrary/SeleniumLibrary.htm
Library  SeleniumLibrary
Library  OperatingSystem

*** Variables ***
${driver_path}=  ${CURDIR}\\drivers\\chromedriver.exe

*** Test Cases ***
Selenium Test
    Open Browser    https://demoqa.com/automation-practice-form   browser=Chrome      executable_path=${driver_path}
    Maximize Browser Window
    Input Text      id=firstName     Mukunthan
    Input Text      id=lastName     Ragavan
    Input Text      id=userEmail     test@gmail.com
    Click Element  xpath=//label[contains(text(),'Male')]
    Input Text      id=userNumber   1234567890
    Click Element      id=dateOfBirthInput
    Select From List By Label   xpath= //select[@class='react-datepicker__month-select']    March
    Select From List By Label   xpath= //select[@class='react-datepicker__year-select']    1990
    Click Element   xpath= //div[@aria-label='Choose Saturday, March 10th, 1990']
    Press Keys  xpath=//*[@id="subjectsContainer"]/div/div[1]   Commerce
    Press Keys     None    RETURN
    Press Keys     None    TAB
    Press Keys     None    SPACE
    Checkbox Should Be Selected  xpath=//*[@id="hobbies-checkbox-1"]
    Choose File       id=uploadPicture     ${CURDIR}/sample.png
    Input Text  id=currentAddress     test\nnewstreet\nindia
    Press Keys     None    TAB
    Press Keys     xpath=//*[@id="state"]/div/div[1]/div[1]    Haryana
    Press Keys     None    RETURN
    Press Keys     None    TAB
    Press Keys     xpath=//*[@id="city"]/div/div[1]/div[1]   Panipat
    Capture Element Screenshot  xpath=//*[@id="city"]/div/div[1]/div[1]
    Press Keys     None    RETURN
    Submit Form  id=userForm
    Sleep  2
    Capture Page Screenshot


#https://www.globalsqa.com/angularJs-protractor/BankingProject/#/customer
#https://www.saucedemo.com/