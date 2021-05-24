*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://localhost:8443/login?logout
${browser}  chrome

*** Keywords ***
Start Test
    Open Browser  ${url}    ${browser}
    Maximize Browser Window
    Sleep   6s


Finish TestCase
    Close Browser