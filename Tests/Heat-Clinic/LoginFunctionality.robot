*** Settings ***
Documentation  Basic Login Functionality
Resource   ../../Resources/CommonFunctionality.robot
Resource   ../../Resources/HeaderPage.robot

Test Setup  CommonFunctionality.Start Test
Test Teardown  CommonFunctionality.Finish TestCase


*** Variables ***
${Email}    jonathasmateusbr@gmail.com
${Pass}     123456


*** Test Cases ***
Valid Login Functionality for Heat-clinic localhost
    [Documentation]  this test case makes a basic login with a already existent user and password
    [Tags]  Functional

    HeaderPage.Input Email      ${email}
    HeaderPage.Input Password   ${pass}
    HeaderPage.Submit Credentials

