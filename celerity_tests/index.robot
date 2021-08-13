*** Settings ***
Documentation     tests for the index page

Resource          resource.robot
Test Teardown     Close Browser


*** Variables ***
${INDEX URL}      https://${SERVER}/
${INDEX TITLE}    Celerity - Move Your Business Forward

*** Keywords ***
Open Browser To Index Page
    Open Browser    ${INDEX URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Index Page Should Be Open

Index Page Should Be Open
    Location Should Be    ${INDEX URL}
    Title Should Be    ${INDEX TITLE}

*** Test Cases ***
Valid Index
    Open Browser To Index Page
    Index Page Should Be Open
    Sleep    5s
