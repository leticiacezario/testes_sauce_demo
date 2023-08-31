*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CART}                               //a[contains(@class,'shopping_cart_link')]
${BACKPACK}                           //div[@class='inventory_item_name'][contains(.,'Sauce Labs Backpack')]
${REMOVE_BTN}                         remove-sauce-labs-backpack
${CART_NUM}                           //span[@class='shopping_cart_badge'][contains(.,'1')]
${CHECKOUT_BTN}                       checkout
${INPUT_FIRSTNAME}                    first-name
${FIRST_NAME}                         Letícia
${INPUT_LASTNAME}                     last-name
${LAST_NAME}                          Testes
${INPUT_POSTALCODE}                   postal-code
${POSTAL_CODE}                        00000000  
${CHEKOUT_CONTINUE_BTN}               continue
${OVERVIEW_PRODUCT}                   //div[@class='inventory_item_name'][contains(.,'Sauce Labs Backpack')]
${FINISH_BTN}                         finish
${MESSAGE_COMPLETE}                   //h2[@class='complete-header'][contains(.,'Thank you for your order!')]

*** Keywords ***

Então o produto "Sauce Labs Backpack" deve ser mostrado no carrinho
    Click Element                    ${CART}
    Element Should Be Visible        ${BACKPACK}

Quando remover o produto "Sauce Labs Backpack" do carrinho
    Então o produto "Sauce Labs Backpack" deve ser mostrado no carrinho
    Click Element                    ${REMOVE_BTN} 

Então o carrinho deve ficar vazio
    Element Should Not Be Visible    ${CART_NUM}

E existe o produto "Sauce Labs Backpack" no carrinho 
    Vitrine.Quando adicionar o produto "Sauce Labs Backpack" no carrinho
    Então o produto "Sauce Labs Backpack" deve ser mostrado no carrinho

Quando finalizar a compra
    Click Button                 ${CHECKOUT_BTN}
    Input Text                    ${INPUT_FIRSTNAME}      ${FIRST_NAME} 
    Input Text                    ${INPUT_LASTNAME}       ${LAST_NAME}
    Input Text                    ${INPUT_POSTALCODE}     ${POSTAL_CODE}  
    Click Button                 ${CHEKOUT_CONTINUE_BTN}
    Element Should Be Visible    ${OVERVIEW_PRODUCT}
    Click Button                 ${FINISH_BTN}



Então valido que foi a compra foi finalizada com sucesso
    Element Should Be Visible    ${MESSAGE_COMPLETE}

    
        


    
    


    
    
    