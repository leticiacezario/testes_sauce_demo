*** Settings ***
Library                SeleniumLibrary
Documentation          Nesta suite se encontra as keywords basicas para execução dos testes

*** Variables ***
${BROWSER}      chrome

*** Keywords ***
#### Setup e Teardown
Abrir navegador
    Open Browser        about:blank   ${BROWSER}

Fechar navegador
    Close Browser