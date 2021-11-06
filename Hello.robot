*** Settings ***
Documentation  This robot explains the different sections of robot file
Library     Dialogs


*** Variables ***
${WELCOME_MSG}  Hello User!

*** Test Cases ***
First Robot
    LOG TO CONSOLE   ${WELCOME_MSG}
    MultiLogin

*** Keywords ***
MultiLogin
    ${username}=    Get Value From User     what is your username?    testuser
    ${password}=    Get Value From User     what is your password?    hidden=yes
    Log To Console   Username : ${username} & password: ${password}
    Log To Console   Logged in Facebook as ${username}
    Log To Console   Logged in Twitter as ${username}
    Log To Console   Logged in LinkedIn as ${username}

