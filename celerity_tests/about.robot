*** Settings ***
Documentation     tests for the about page

Resource          resource.robot
Test Teardown     Close Browser


*** Variables ***
${SLUG}        about
${URL}         https://${SERVER}/${SLUG}
${TITLE}       About Us - Celerity

*** Keywords ***
Open Firefox To About Page
    Open Browser    ${URL}    ${HEADLESS FIREFOX}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    About Page Should Be Open

Open Chrome To About Page
    Open Browser    ${URL}    ${HEADLESS CHROME}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    About Page Should Be Open

About Page Should Be Open
    Location Should Be    ${URL}
    Title Should Be    ${TITLE}

*** Test Cases ***
Valid About Page
    [Documentation]    Opens headless browsers (Chrome and Firefox) and checks if About page loads.
    Open Firefox To About Page
    About Page Should Be Open
    Sleep   3s
    Open Chrome To About Page
    About Page Should Be Open
    Sleep   3s