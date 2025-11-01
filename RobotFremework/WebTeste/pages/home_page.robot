*** Settings ***
Resource   ../resources/amazon_variables.robot
Library    SeleniumLibrary

*** Keywords ***
Dado que acesso a home page do site amazon.com.br
    Go To    ${URL}
    Wait Until Element Is Visible    ${menu_eletronicos}    10s

E entro no menu "${menu}"
    Click Element    ${menu_eletronicos}
    Sleep    2s
