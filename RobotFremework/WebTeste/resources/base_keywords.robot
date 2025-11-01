*** Settings ***
Library    SeleniumLibrary
Resource   amazon_variables.robot
Resource   ../pages/home_page.robot
Resource   ../pages/eletronicos_page.robot
Resource   ../pages/pesquisa_page.robot
Resource   ../pages/carrinho_page.robot

*** Keywords ***
Abrir o navegador
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser
