*** Settings ***
Documentation     tests for the index page

Resource          resource.robot
Test Teardown     Close Browser


*** Variables ***
${INDEX URL}      https://${SERVER}/
${INDEX TITLE}    Celerity - Move Your Business Forward

*** Keywords ***
Open Firefox To Index Page
    Open Browser    ${INDEX URL}    ${HEADLESS FIREFOX}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Index Page Should Be Open

Open Chrome To Index Page
    Open Browser    ${INDEX URL}    ${HEADLESS CHROME}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Index Page Should Be Open

Index Page Should Be Open
    Location Should Be    ${INDEX URL}
    Title Should Be    ${INDEX TITLE}

*** Test Cases ***
Valid Index
    Open Firefox To Index Page
    Index Page Should Be Open
    Sleep    3s
    Open Chrome To Index Page
    Index Page Should Be Open
    Sleep    3s
