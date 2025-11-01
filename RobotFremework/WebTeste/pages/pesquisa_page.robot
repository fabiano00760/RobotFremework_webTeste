*** Settings ***
Resource   ../resources/amazon_variables.robot
Library    SeleniumLibrary

*** Keywords ***
E digito o nome do produto "${produto}" no campo de pesquisa
    Input Text    ${campo_pesquisa}    ${produto}
    Sleep    2s
    Capture Page Screenshot

Quando clico no botão de pesquisa
    Click Button    ${botao_pesquisa}
    Sleep    2s

Então vejo o produto "${produto}" nos resultados da pesquisa
    Wait Until Element Is Visible    xpath=//span[contains(text(),'${produto}')]
    Element Should Be Visible        xpath=//span[contains(text(),'${produto}')]
