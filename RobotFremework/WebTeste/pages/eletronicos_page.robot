*** Settings ***
Resource   ../resources/amazon_variables.robot
Library    SeleniumLibrary

*** Keywords ***
Quando verifico que o título da página é "${titulo}"
    Wait Until Element Is Visible   ${titulo_eletronicos}   15s
    ${texto}=    Get Text    ${titulo_eletronicos}
    Should Be Equal As Strings    ${texto}    ${titulo}

E vejo a frase "${frase}"
    Wait Until Page Contains    ${frase}    10s
    Page Should Contain         ${frase}

Então vejo a categoria "${categoria}"
    Wait Until Element Is Visible    xpath=//span[contains(text(),'${categoria}')]    20s
    Element Should Be Visible        xpath=//span[contains(text(),'${categoria}')]
