*** Settings ***
Documentation     Test the find out more button on index page

Resource          ../resource.robot
Test Teardown     Close Browser


*** Variables ***
${INDEX URL}      https://${SERVER}/
${INDEX TITLE}    Celerity - Move Your Business Forward
${BUTTON TEXT}    FIND OUT MORE

${SLUG}        about
${URL}         https://${SERVER}/${SLUG}
${TITLE}       About Us - Celerity

*** Keywords ***
Open Firefox To Index Page
    Open Browser    ${INDEX URL}    ${HEADLESS FIREFOX}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Index Page Should Be Open

Index Page Should Be Open
    Location Should Be    ${INDEX URL}
    Title Should Be    ${INDEX TITLE}

Click Find Out More Button
    Click Link    link:${BUTTON TEXT}

About Page Should Be Open
    Location Should Be    ${URL}
    Title Should Be    ${TITLE}

*** Test Cases ***
Valid Index
    [Documentation]    Open index page and click Find out more button
    Open Firefox To Index Page
    Index Page Should Be Open
    Sleep    1s
    Click Find Out More Button
    Sleep    1s
    About Page Should Be Open