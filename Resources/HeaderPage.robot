*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${EmailTextBox}     xpath://*[@id="username"]

${PasswordTextBox}  xpath://*[@id="password"]

${LoginButton}      xpath://*[@id="login"]/form/button
${WelcomePage}      https://localhost:8443/
${User}     xpath://*[@id="sectionsNav"]/div/div[1]/ul[2]/li[1]/a/text()


*** Keywords ***
Input Email
    [Arguments]     ${Email}
    Input Text      ${EmailTextBox}     ${Email}

Input Password
    [Arguments]     ${Pass}
    Input Text      ${passwordtextbox}      ${Pass}

Submit Credentials
    Click Button    ${LoginButton}







