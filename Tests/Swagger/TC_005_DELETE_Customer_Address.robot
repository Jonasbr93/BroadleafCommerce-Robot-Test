*** Settings ***
Library  RequestsLibrary

*** Variables ***
${Base_URL}=     http://localhost:8082/api/v1
${addressName}=     Porto


*** Test Cases ***
TC_006_DELETE_Customer_addresses
    ${queryParams}=     Create Dictionary       customerId=200

    Create session  customer   ${Base_URL}

    ${body}=    Create dictionary   ..............................................

    ${header}=  Create dictionary     Accept=application/json   Authorization=Basic YWRtaW46YWRtaW4=
    ${response}=  Delete On Session    customer     /customer/address/${addressName}?     params=${queryParams}       headers=${header}

    log to console  ${response.status_code}
    log to console  ${response.content}