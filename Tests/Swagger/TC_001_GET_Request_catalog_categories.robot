*** Settings ***
Library  RequestsLibrary

*** Variables ***
${Base_URL}     http://localhost:8082/api/v1


*** Test Cases ***
TC_001_Get_Request_catalog
    Create session  catalog   ${Base_URL}
    ${response}=    Get On Session    catalog     /catalog/categories
    log to console  ${response.status_code}
    log to console  ${response.content}

