*** Settings ***
Documentation     tests for the index page

Resource          resource.robot
Test Teardown     Close Browser


*** Variables ***
${URL}      https://${SERVER}/
${TITLE}    Celerity - Move Your Business Forward

*** Keywords ***
Open Firefox To Index Page
    Open Browser    ${URL}    ${HEADLESS FIREFOX}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Index Page Should Be Open

Open Chrome To Index Page
    Open Browser    ${URL}    ${HEADLESS CHROME}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Index Page Should Be Open

Index Page Should Be Open
    Location Should Be    ${URL}
    Title Should Be    ${TITLE}

*** Test Cases ***
Valid Index
    [Documentation]    Opens headless browsers (Chrome and Firefox) and checks if index page loads.
    Open Firefox To Index Page
    Index Page Should Be Open
    Sleep    3s
    Open Chrome To Index Page
    Index Page Should Be Open
    Sleep    3s
    Click About Link
    Sleep    3s
