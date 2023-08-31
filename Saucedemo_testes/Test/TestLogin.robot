*** Settings ***
Documentation       Nessa suite se encontra todos os cenário referente ao login do site Sauce Demo.
Resource            ../resources/Resource.robot
Resource            ../Resources/PageObjects/Carrinho.robot
Resource            ../resources/PageObjects/Login.robot
Resource            ../resources/PageObjects/Vitrine.robot
Test Setup          Abrir navegador
Test Teardown       Fechar navegador


*** Test Cases ***

Caso de Teste: Realizar login com sucesso
    [Documentation]    Este teste é referente ao login com sucesso
    [Tags]             login cenario_positivo
    Login.Dado que eu acesse o site Sauce Demo
    Login.Quando inserir usuario e senha validos
    Vitrine.Entao valido que login foi realizado com sucesso

Caso de Teste: Falha ao realizar login com usuario inválido
     [Documentation]    Este teste é referente a tentativa de realizar o login inserindo um usuario inválido
     [Tags]             login     cenario_negativo   
     Login.Dado que eu acesse o site Sauce Demo
     Login.Quando inserir usuario invalido e senha valida    
     Login.Entao valido retorno da mensagem de erro

Caso de Teste: Falha ao realizar login com senha inválida
    [Documentation]    Este teste é referente a tentativa de realizar o login inserindo uma senha inválido
    [Tags]             login     cenario_negativo
    Login.Dado que eu acesse o site Sauce Demo
    Login.Quando inserir usuario valido e senha invalida    
    Login.Entao valido retorno da mensagem de erro

Caso de Teste: Falha ao realizar login com campo usuario em branco
    [Documentation]    Este teste é referente a tentativa de realizar o login sem preencher o campo usuario
    [Tags]             login     cenario_negativo
    Login.Dado que eu acesse o site Sauce Demo
    Login.Quando tentar realizar o login sem inserir o usuario    
    Login.Entao valido mensagem de obrigatoriedade do usuario

Caso de Teste: Falha ao realizar login com campo senha em branco
    [Documentation]    Este teste é referente a tentativa de realizar o login sem preencher o campo senha
    [Tags]             login     cenario_negativo
    Login.Dado que eu acesse o site Sauce Demo
    Login.Quando tentar realizar o login sem inserir a senha   
    Login.Entao valido mensagem de obrigatoriedade da senha

Caso de Teste: Falha ao realizar login com usuario bloqueado
    [Documentation]    Este teste é referente a tentativa de realizar o login utilizando um usuario bloqueado pelo sistema
    [Tags]             login     usuario_bloqueado     cenario_negativo
    Login.Dado que eu acesse o site Sauce Demo
    Login.Quando tentar realizar o login usando um usuario bloqueado   
    Login.Entao valido retorno da mensagem de erro para usuario bloqueado
