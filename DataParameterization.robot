*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Test Template  LoginForm
Test Teardown  Close All Browsers


*** Variables ***
${driver_path}=  ${CURDIR}\\drivers\\chromedriver.exe

*** Test Cases ***
test1                           standard_user	        secret_sauce
test2                           locked_out_user		    secret_sauce
test3                           problem_user			secret_sauce
test4                           performance_glitch_user	secret_sauce

*** Keywords ***
LoginForm
    [Arguments]         ${username}         ${password}
    Open Browser    https://www.saucedemo.com/   browser=Chrome      executable_path=${driver_path}
    Maximize Browser Window
    Input Text      id=user-name    ${username}
    Input Text      id=password    ${password}
    Click Element   id=login-button
    Page Should Contain Element  xpath=//*[@id="header_container"]/div[2]/span













