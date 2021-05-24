*** Settings ***
Library  RequestsLibrary

*** Variables ***
${Base_URL}=     http://localhost:8082/api/v1



*** Test Cases ***
TC_004_POST_Customer

    Create session  customer   ${Base_URL}
    ${inner}=  Create Dictionary    customerId=200    id=200    name=Bruno    value=0
    ${array}=  Create List  ${inner}
    ${body}=  Create Dictionary    customerAttributes=${array}    emailAddress=bruno@gmail.com    firstName=algo    id=200    lastName=Oliveira    registered=True
    ${header}=  Create dictionary   Content-Type=application/json   Accept=application/json     Authorization=Basic YWRtaW46YWRtaW4=' -d
    ${response}=  Post On Session    customer     /customer       json=${body}        headers=${header}
    log to console  ${response.status_code}
    log to console  ${response.content}