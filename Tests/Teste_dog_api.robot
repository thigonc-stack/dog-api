*** Settings ***
Library  RequestsLibrary
Library    Collections

*** Variables ***
${BASE_URL}  https://dog.ceo/api

*** Test Cases ***
GET /breeds/list/all` — Lista todas as raças de cães.
    [Tags]  GET
    Create Session  dog_api  ${BASE_URL}
    ${response}=  GET  dog_api  /breeds/list/all
    Status Should Be  200  ${response}
    Dictionary Should Contain Key ${response.json()}  message

GET /breed/{breed}/images` — Retorna imagens de uma raça específica.
    [Tags]     GET
    Create Session     dog_api     ${BASE_URL}
    ${response}=    GET     dog_api    /breed/hound/images
    Status Should Be    200  ${response}
    Dictionary Should Contain Key  ${response.json()}  message
    ${variable}=    Length Should Be Greater Than  ${response.json()}[message]  0

GET /breeds/image/random` — Retorna uma imagem aleatória de qualquer raça.
    [Tags]  GET
    Create Session  dog_api  ${BASE_URL}
    ${response}=  GET  dog_api  /breeds/image/random
    Status Should Be  200  ${response}
    Dictionary Should Contain Key  ${response.json()}  message
    Should Start With ${response.json()}[message] 
