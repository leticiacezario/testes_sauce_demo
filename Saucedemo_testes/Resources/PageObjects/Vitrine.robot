*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${TITLE_PRODUCTS}         //span[@class='title'][contains(.,'Products')]
${ADD_BACKPACK}           add-to-cart-sauce-labs-backpack
${CART_NUM}               //span[@class='shopping_cart_badge'][contains(.,'1')]

*** Keywords ***

Entao valido que login foi realizado com sucesso
    Element Should Be Visible    ${TITLE_PRODUCTS}

Quando adicionar o produto "Sauce Labs Backpack" no carrinho
    Element Should Be Visible    ${TITLE_PRODUCTS}
    Click Element                ${ADD_BACKPACK} 


    
        