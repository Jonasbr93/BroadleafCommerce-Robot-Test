*** Settings ***
Library  RequestsLibrary


*** Variables ***
${Base_URL}     http://localhost:8082/api/v1



*** Test Cases ***
TC_002_Post_Request
    Create session  customer   ${Base_URL}

    ${body}=    create dictionary   {"customerAttributes":[{"customerId":200, "id":200, "name":"Bruno", "value":0}], "emailAddress":"xxxx@gmail.com", "firstName":"algo", "id":200, "lastName":"Oliveira", "registered":true}
    ${header}=  create dictionary   Content-Type=application/json
    ${response}=    Post On Session    customer    /customer    json=${body}    headers=${header}
    log to console  ${response.status_code}
    log to console  ${response.content}