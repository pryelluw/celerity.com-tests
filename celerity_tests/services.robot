*** Settings ***
Documentation     tests for the service offerings page

Resource          resource.robot
Test Teardown     Close Browser


*** Variables ***
${SLUG}    services
${URL}         https://${SERVER}/${SLUG}
${TITLE}       Service offerings - Celerity

*** Keywords ***
Open Firefox To Services Page
    Open Browser    ${URL}    ${HEADLESS FIREFOX}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Services Page Should Be Open

Open Chrome To Services Page
    Open Browser    ${URL}    ${HEADLESS CHROME}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Services Page Should Be Open

Services Page Should Be Open
    Location Should Be    ${URL}
    Title Should Be    ${TITLE}

*** Test Cases ***
Valid Services Page
    [Documentation]    Opens headless browsers (Chrome and Firefox) and checks if Service offerings page loads.
    Open Firefox To Services Page
    Services Page Should Be Open
    Sleep    3s
    Open Chrome To Services Page
    Services Page Should Be Open
    Sleep    3s