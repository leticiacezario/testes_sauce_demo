*** Settings ***
Library                SeleniumLibrary
Documentation          Nesta suite se encontra as keywords referentes a pagina de login

*** Variables ***
${LOGIN_URL}                 https://www.saucedemo.com
${LOGIN_BTN}                 login-button
${USER_INPUT}                user-name
${PASSWORD_INPUT}            password
${USER_VALID}                standard_user
${USER_INVALID}              leticia_teste
${USER_LOCKED}               locked_out_user
${PASSWORD_VALID}            secret_sauce
${PASSWORD_INVALID}          teste123
${USER_INCORRECT}            //div[@class='error-message-container error'][contains(.,'Epic sadface: Username and password do not match any user in this service')]  
${MISSING_USER}              //h3[@data-test='error'][contains(.,'Epic sadface: Username is required')]
${MISSING_PASSWORD}          //div[@class='error-message-container error'][contains(.,'Epic sadface: Password is required')]
${USER_LOCKED_OUT}           //h3[@data-test='error'][contains(.,'Epic sadface: Sorry, this user has been locked out.')]    

*** Keywords ***
Dado que eu acesse o site Sauce Demo
    Go To                             url=${LOGIN_URL}  
    Wait Until Element Is Visible     ${LOGIN_BTN}

Quando inserir usuario e senha validos
    Input Text                  ${USER_INPUT}    ${USER_VALID} 
    Input Text                  ${PASSWORD_INPUT}     ${PASSWORD_VALID}
    Click Button                ${LOGIN_BTN}

Quando inserir usuario invalido e senha valida
    Input Text                   ${USER_INPUT}    ${USER_INVALID} 
    Input Text                   ${PASSWORD_INPUT}     ${PASSWORD_VALID}
    Click Button                 ${LOGIN_BTN}
Entao valido retorno da mensagem de erro
    Element Should Be Visible    ${USER_INCORRECT}

Quando inserir usuario valido e senha invalida
    Input Text                   ${USER_INPUT}    ${USER_VALID} 
    Input Text                   ${PASSWORD_INPUT}     ${PASSWORD_INVALID}
    Click Button                 ${LOGIN_BTN}

Quando tentar realizar o login sem inserir o usuario
    Input Text                   ${PASSWORD_INPUT}     ${PASSWORD_VALID}
    Click Button                 ${LOGIN_BTN}
    
Entao valido mensagem de obrigatoriedade do usuario
    Element Should Be Visible    ${MISSING_USER} 

Quando tentar realizar o login sem inserir a senha
    Input Text                   ${USER_INPUT}     ${USER_VALID}
    Click Button                 ${LOGIN_BTN}

Entao valido mensagem de obrigatoriedade da senha
    Element Should Be Visible    ${MISSING_PASSWORD}

Quando tentar realizar o login usando um usuario bloqueado
    Input Text                   ${USER_INPUT}    ${USER_LOCKED}
    Input Text                   ${PASSWORD_INPUT}     ${PASSWORD_VALID}
    Click Button                 ${LOGIN_BTN}

Entao valido retorno da mensagem de erro para usuario bloqueado
    Element Should Be Visible    ${USER_LOCKED_OUT}

E realize o login
    Dado que eu acesse o site Sauce Demo
    Quando inserir usuario e senha validos

