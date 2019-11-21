*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${URL}      http://www.google.com
${BROWSER}        Chrome

*** Test Cases ***
Search For How To Boil Water
    Open Browser To Google
    Input Text      name=q      how to boil water
    Press Key       name=q      \\13
    Title Should Be    how to boil water - Google Search
    Sleep   1
    [Teardown]    Close Browser

*** Keywords ***
Open Browser To Google
    Open Browser    ${URL}    ${BROWSER}
    Title Should Be    Google
