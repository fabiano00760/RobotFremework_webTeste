*** Settings ***
Resource   ../resources/amazon_variables.robot
Library    SeleniumLibrary

*** Keywords ***
Quando adicionar o produto "Console Xbox Series S" no carrinho
    Input Text    ${campo_pesquisa}    Console Xbox Series S
    Click Button    ${botao_pesquisa}
    Wait Until Element Is Visible   ${console}    
    Wait Until Element Is Visible    ${CONTROLE_SEM_FIO_XBOX}   
    Scroll Element Into View         ${CONTROLE_SEM_FIO_XBOX}
    Click Element                    ${CONTROLE_SEM_FIO_XBOX}
    Wait Until Element Is Visible    ${cart-button}    1s   
    Click Element                    ${cart-button}    
    Wait Until Element Is Visible    ${btn_carrinho} 
    Scroll Element Into View         ${btn_carrinho}
    Click Button                     ${btn_carrinho}
    Sleep    5s    

Então o produto "Console Xbox Series S" deve ser mostrado no carrinho   
    Wait Until Element Is Visible    ${carrinho}
    Click Element                    ${carrinho}
    Wait Until Element Is Visible    ${Console_Xbox_Series_S}
    Element Should Be Visible        ${Console_Xbox_Series_S}

E existe o produto "Console Xbox Series S" no carrinho
    Wait Until Element Is Visible    ${Console_Xbox_Series_S}
    Element Should Be Visible        ${Console_Xbox_Series_S}

Quando remover o produto "Console Xbox Series S" do carrinho
    Wait Until Element Is Visible    ${remover_carrinho}    
    Click Element                    ${remover_carrinho}  
    Sleep    5s

Então o carrinho deve ficar vazio
    Wait Until Element Is Visible    ${carrinho_vazio}    10s
    ${quantidade}=    Get Text       ${carrinho_vazio}
    Should Be Equal As Integers      ${quantidade}    0
