*** Settings ***
Documentation        suite de teste de cadastro de dog walker

Library        Browser


*** Test Cases ***  
Deve poder cadastrar um novo dog walker

    ${name}            Set Variable     Gilson Rodrigues
    ${email}           Set Variable  gilson@hotmail.com
    ${cpf}             Set Variable    48998698000
    ${cep}             Set Variable    06341-150
    ${addressStreet}   Set Variable    Rua Tiradentes
    ${addressDistrict}  Set Variable   Parque Santa Teresa 
    ${addressCityUf}   Set Variable    Carapicuíba/SP
    ${addressNumber}   Set Variable    38
    ${cnh}    Set Variable    toretto.jpg

    Go to sigunp page
    Fill singup form    ${name}    ${email}    ${cpf}    ${cep}    ${addressStreet}    ${addressDistrict}    ${addressCityUf}    ${addressNumber}    ${cnh}  
    Submit signup form
    Popup shoudl be    Recebemos o seu cadastro e em breve retornaremos o contato.


*** Keywords ***

Go to sigunp page
    New Browser    browser=chromium    headless=False
    New Page        https://walkdog.vercel.app/signup

    Wait For Elements State    form h1    visible    50000
    Get Text     form h1    equal    Faça seu cadastro

Fill singup form
    [Arguments]    ${name}    ${email}    ${cpf}    ${cep}    ${addressStreet}    ${addressDistrict}    ${addressCityUf}    ${addressNumber}    ${cnh}
    Fill Text    css=input[name=name]           ${name}
    Fill Text    css=input[name=email]          ${email}
    Fill Text    css=input[name=cpf]            ${cpf}
    Fill Text    css=input[name=cep]            ${cep}
    
    Click        css=input[type=button][value$=CEP]

    Get Property    css=input[name=addressStreet]    value    equal    ${addressStreet}
    Get Property    css=input[name=addressDistrict]    value    equal    ${addressDistrict}
    Get Property    css=input[name=addressCityUf]    value    equal    ${addressCityUf}

    Fill Text    css=input[name=addressNumber]  ${addressNumber}

    Upload File By Selector    css=input[type=file]    ${EXECDIR}/${cnh}
    
Submit signup form 
    Click    css=.button-register

Popup shoudl be
    [Arguments]    ${expected_text}
    Wait For Elements State    css=.swal2-html-container    visible    5
    Get Text                   css=.swal2-html-container    equal    Recebemos o seu cadastro e em breve retornaremos o contato.
