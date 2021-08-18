*** Settings ***
Documentation     tests for the about page

Resource          resource.robot
Test Teardown     Close Browser


*** Variables ***
${ABOUT ENDPOINT}    About
${ABOUT URL}         https://${SERVER}/${ABOUT ENDPOINT}
${ABOUT TITLE}       About Us - Celerity

*** Keywords ***
Open Firefox To About Page
    Open Browser    ${ABOUT URL}    ${HEADLESS FIREFOX}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    About Page Should Be Open

Open Chrome To About Page
    Open Browser    ${ABOUT URL}    ${HEADLESS CHROME}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    About Page Should Be Open

About Page Should Be Open
    Location Should Be    ${ABOUT URL}
    Title Should Be    ${ABOUT TITLE}

*** Test Cases ***
Valid About Page
    Open Firefox To About Page
    About Page Should Be Open
    Sleep   3s
    Open Chrome To About Page
    About Page Should Be Open
    Sleep   3s