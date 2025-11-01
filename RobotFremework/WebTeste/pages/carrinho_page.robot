*** Settings ***
Resource   ../resources/amazon_variables.robot
Library    SeleniumLibrary

*** Keywords ***
Quando adicionar o produto "Console Xbox Series S" no carrinho
    Input Text    ${campo_pesquisa}    Console Xbox Series S
    Click Button    ${botao_pesquisa}
    Wait Until Element Is Visible   ${console}    
    Wait Until Element Is Visible    xpath=//span[contains(text(),'CONTROLE SEM FIO XBOX - REMIX EDICAO ESPECIAL')]    
    Scroll Element Into View         xpath=//span[contains(text(),'CONTROLE SEM FIO XBOX - REMIX EDICAO ESPECIAL')]
    Click Element                    xpath=//span[contains(text(),'CONTROLE SEM FIO XBOX - REMIX EDICAO ESPECIAL')]
    Wait Until Element Is Visible    xpath=//*[@id="add-to-cart-button"]    1s   
    Click Element                    xpath=//*[@id="add-to-cart-button"]    
    Wait Until Element Is Visible    xpath=//*[@id="attachSiNoCoverage"]/span/input 
    Scroll Element Into View         xpath=//*[@id="attachSiNoCoverage"]/span/input
    Click Button                     xpath=//*[@id="attachSiNoCoverage"]/span/input
    Sleep    5s    

Então o produto "Console Xbox Series S" deve ser mostrado no carrinho   
    Wait Until Element Is Visible    xpath=//*[@id="nav-cart-text-container"]/span[2]
    Click Element                    xpath=//*[@id="nav-cart-text-container"]/span[2]
    Wait Until Element Is Visible    xpath=//*[@id="sc-active-items-header"]
    Element Should Be Visible        xpath=//*[@id="sc-active-items-header"]

E existe o produto "Console Xbox Series S" no carrinho
    Wait Until Element Is Visible    xpath=//*[@id="sc-active-items-header"]
    Element Should Be Visible        xpath=//*[@id="sc-active-items-header"]

Quando remover o produto "Console Xbox Series S" do carrinho
    Wait Until Element Is Visible    xpath=//input[@value='Excluir']    
    Click Element                    xpath=//input[@value='Excluir']    
    Sleep    5s

Então o carrinho deve ficar vazio
    Wait Until Element Is Visible    xpath=//*[@id="nav-cart-count"]    10s
    ${quantidade}=    Get Text       xpath=//*[@id="nav-cart-count"]
    Should Be Equal As Integers      ${quantidade}    0
