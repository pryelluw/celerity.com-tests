*** Settings ***
Documentation     tests for the about page

Resource          resource.robot
Test Teardown     Close Browser


*** Variables ***
${ABOUT ENDPOINT}    About
${ABOUT URL}         https://${SERVER}/${ABOUT ENDPOINT}
${ABOUT TITLE}       About Us - Celerity

*** Keywords ***
Open Browser To About Page
    Open Browser    ${ABOUT URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    About Page Should Be Open

About Page Should Be Open
    Location Should Be    ${ABOUT URL}
    Title Should Be    ${ABOUT TITLE}

*** Test Cases ***
Valid About Page
    Open Browser To About Page
    About Page Should Be Open
    Sleep    5s