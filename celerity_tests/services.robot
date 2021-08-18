*** Settings ***
Documentation     tests for the service offerings page

Resource          resource.robot
Test Teardown     Close Browser


*** Variables ***
${SERVICES ENDPOINT}    services
${SERVICES URL}         https://${SERVER}/${SERVICES ENDPOINT}
${SERVICES TITLE}       Service offerings - Celerity

*** Keywords ***
Open Firefox To Services Page
    Open Browser    ${SERVICES URL}    ${HEADLESS FIREFOX}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Services Page Should Be Open

Open Chrome To Services Page
    Open Browser    ${SERVICES URL}    ${HEADLESS CHROME}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Services Page Should Be Open

Services Page Should Be Open
    Location Should Be    ${SERVICES URL}
    Title Should Be    ${SERVICES TITLE}

*** Test Cases ***
Valid Services Page
    Open Firefox To Services Page
    Services Page Should Be Open
    Sleep    3s
    Open Chrome To Services Page
    Services Page Should Be Open
    Sleep    3s