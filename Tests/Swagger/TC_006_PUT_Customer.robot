*** Settings ***
Library  RequestsLibrary

*** Variables ***
${Base_URL}=     http://localhost:8082/api/v1



*** Test Cases ***
TC_006_PUT_Customer
    ${queryParams}=     Create Dictionary       customerId=200
    Create session  customer   ${Base_URL}
    ${inner}=  Create Dictionary    customerId=200    id=201   name=naofunciona    value=0
    ${array}=  Create List  ${inner}
    ${body}=  Create Dictionary    customerAttributes=${array}    emailAddress=brunooliveira@gmail.com    firstName=brunoA   id=201   lastName=OliveiraA   registered=True
    ${header}=  Create dictionary      Accept=application/json
    ${response}=  PUT On Session    customer     /customer?     params=${queryParams}   json=${body}    headers=${header}
    log to console  ${response.status_code}
    log to console  ${response.content}