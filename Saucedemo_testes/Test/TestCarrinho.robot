*** Settings ***
Documentation       Nessa suite se encontra todos cenários referente ao carrinho de compras do site Sauce Demo.
Resource            ../resources/Resource.robot
Resource            ../Resources/PageObjects/Carrinho.robot
Resource            ../resources/PageObjects/Login.robot
Resource            ../resources/PageObjects/Vitrine.robot
Test Setup          Abrir navegador
Test Teardown       Fechar navegador


*** Test Cases ***

Caso de Teste: Adicionar produto no carrinho
    [Documentation]    Este teste é referente ao login com sucesso
    [Tags]             carrinho     adicionar_produto     cenario_positivo
    Login.Dado que eu acesse o site Sauce Demo
    Login.E realize o login
    Vitrine.Quando adicionar o produto "Sauce Labs Backpack" no carrinho
    Carrinho.Então o produto "Sauce Labs Backpack" deve ser mostrado no carrinho

Caso de Teste: Remover produto do carrinho
    [Documentation]    Este teste é referente ao login sem sucesso inserindo um usuario inválido
    [Tags]             carrinho     remover_produto     cenario_positivo   
    Login.Dado que eu acesse o site Sauce Demo
    Login.E realize o login
    Carrinho.E existe o produto "Sauce Labs Backpack" no carrinho
    Carrinho.Quando remover o produto "Sauce Labs Backpack" do carrinho
    Carrinho.Então o carrinho deve ficar vazio
    

Caso de Teste: Realizar compra com sucesso
    [Documentation]    Este teste é referente ao login sem sucesso inserindo uma senha inválido
    [Tags]             carrinho     compra_sucesso     cenario_positivo
    Login.Dado que eu acesse o site Sauce Demo
    Login.E realize o login
    Carrinho.E existe o produto "Sauce Labs Backpack" no carrinho
    Carrinho.Quando finalizar a compra
    Carrinho.Então valido que foi a compra foi finalizada com sucesso
    

