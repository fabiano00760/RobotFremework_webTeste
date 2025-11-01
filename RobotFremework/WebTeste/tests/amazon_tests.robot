*** Settings ***
Documentation     Testes automatizados para o site Amazon.com.br utilizando Robot Framework e Page Object
Resource          ../resources/base_keywords.robot
Suite Setup       Abrir o navegador
Suite Teardown    Fechar o navegador

*** Test Cases ***
Caso de teste 01 - acesso ao menu "eletrônicos"
    [Documentation]    Verifica o menu eletrônicos das categorias do site Amazon.com.br
    [Tags]    smoke    menus_eletronicos
    Dado que acesso a home page do site amazon.com.br
    E entro no menu "eletrônicos"
    Quando verifico que o título da página é "Eletrônicos e Tecnologia"
    E vejo a frase "Eletrônicos e Tecnologia"
    Então vejo a categoria "Computadores e Informática"

Caso de teste 02 - pesquisa de produtos
    [Documentation]    Verifica a funcionalidade de pesquisa de um produto no site Amazon.com.br
    [Tags]    smoke    pesquisa_produtos
    E digito o nome do produto "Xbox Series S" no campo de pesquisa
    Quando clico no botão de pesquisa
    Então vejo o produto "Xbox Series S" nos resultados da pesquisa

Caso de teste 03 - adicionar produto no carrinho
    [Documentation]    Verifica a adição de um produto no carrinho de compras
    [Tags]             adicionar_carrinho
    Quando adicionar o produto "Console Xbox Series S" no carrinho
    Então o produto "Console Xbox Series S" deve ser mostrado no carrinho

Caso de teste 04 - remover produto do carrinho
    [Documentation]    Verifica a remoção de um produto no carrinho
    [Tags]             remover_carrinho
    E existe o produto "Console Xbox Series S" no carrinho
    Quando remover o produto "Console Xbox Series S" do carrinho
    Então o carrinho deve ficar vazio
