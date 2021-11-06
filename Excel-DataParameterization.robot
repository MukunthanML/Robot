*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Test Template  LoginForm
Library  DataDriver     ../Robot/exceldata.xlsx
Test Teardown  Close All Browsers


*** Variables ***
${driver_path}=  ${CURDIR}\\drivers\\chromedriver.exe


*** Test Cases ***
LoginTestWithExcel using ${username} and ${password}

*** Keywords ***
LoginForm
    [Arguments]         ${username}         ${password}
    Open Browser    https://www.saucedemo.com/   browser=Chrome      executable_path=${driver_path}
    Maximize Browser Window
    Input Text      id=user-name    ${username}
    Input Text      id=password    ${password}
    Click Element   id=login-button
    Sleep  5
    Page Should Contain Element  xpath=//*[@id="header_container"]/div[2]/span
