*** Settings ***
Library  RequestsLibrary
Library  JSONLibrary



*** Variables ***
${Base_URL}=     http://localhost:8082/api/v1



*** Test Cases ***
TC_007_PUT_Customer
    ${json}=	Load Json From File	Tests/Swagger/address.json
    ${json_object}=	Update Value To Json	${json}	$.address.addressLine1	Ratchadapisek Road

    ${queryParams}=     Create Dictionary       customerId=200
    Create session  customer   ${Base_URL}

    ${body}=  Create Dictionary      address=${address} addressName=string applicationContext=${applicationContext} archived=${archived} id=0
    ${header}=  Create dictionary      Accept=application/json
    ${response}=  PUT On Session    customer     /customer/address?     params=${queryParams}   json=${body}    headers=${header}
    log to console  ${response.status_code}
    log to console  ${response.content}