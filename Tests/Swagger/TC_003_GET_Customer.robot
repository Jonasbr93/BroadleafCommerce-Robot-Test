*** Settings ***
Library  RequestsLibrary

*** Variables ***
${Base_URL}=     http://localhost:8082



*** Test Cases ***
TC_003_GET_Customer
    ${queryParams}=     Create Dictionary       email=bruno@gmail.com
    Create session  customer   ${Base_URL}
    ${response}=    Get On Session    customer      /api/v1/customer?    params=${queryParams}
    log to console  ${response.status_code}
    log to console  ${response.content}



