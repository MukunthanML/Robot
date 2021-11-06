*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Library  DataDriver     ../Robot/csvdata.csv
Test Template  LoginForm
Test Teardown  Close All Browsers


*** Variables ***
${driver_path}=  ${CURDIR}\\drivers\\chromedriver.exe


*** Test Cases ***
LoginFormTest using ${username} and ${password}
#LoginFormTest

*** Keywords ***
LoginForm
    [Arguments]         ${username}         ${password}
    Open Browser    https://www.saucedemo.com/   browser=Chrome      executable_path=${driver_path}
    Maximize Browser Window
    Input Text      id=user-name    ${username}
    Input Text      id=password    ${password}
    Click Element   id=login-button
    Page Should Contain Element  xpath=//*[@id="header_container"]/div[2]/span













