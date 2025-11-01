🧪 Automação Web – Amazon.com.br com Robot Framework
📘 Descrição do Projeto

Este projeto tem como objetivo automatizar testes funcionais no site Amazon.com.br
, utilizando o Robot Framework com o padrão Page Object Model (POM) para garantir organização, reutilização e manutenção eficiente do código.

A automação cobre as principais funcionalidades de navegação, pesquisa e manipulação do carrinho de compras da Amazon, servindo como base para testes de regressão e validação de interface.

⚙️ Tecnologias Utilizadas

Robot Framework
 – Framework de automação de testes baseado em palavras-chave (keyword-driven)

SeleniumLibrary
 – Biblioteca para automação de navegadores web

Python 3.8+

Google Chrome / ChromeDriver

🏗️ Estrutura do Projeto
project/
│
├── tests/
│   └── amazon_tests.robot             # Arquivo principal de execução dos testes
│
├── pages/                             # Camada de Page Objects
│   ├── home_page.robot                # Ações e elementos da página inicial
│   ├── eletronicos_page.robot         # Ações e validações da página de eletrônicos
│   ├── pesquisa_page.robot            # Funcionalidades de pesquisa de produtos
│   └── carrinho_page.robot            # Ações e validações do carrinho de compras
│
└── resources/
    ├── amazon_variables.robot          # Variáveis globais e seletores
    └── base_keywords.robot             # Configurações de setup/teardown e integração entre páginas

🧩 Estrutura dos Testes (Page Object Model)

O projeto segue o padrão Page Object Model (POM), onde cada página do site é representada por um arquivo .robot contendo:

Elementos (localizadores XPath, IDs, etc.)

Palavras-chave (keywords) para interação

Validações específicas da página

Os arquivos de teste (amazon_tests.robot) apenas chamam essas keywords, tornando o código mais limpo e fácil de manter.

🧪 Cenários Automatizados
Caso de Teste	Descrição	Tags
CT01 - Acesso ao menu “Eletrônicos”	Valida a navegação até o menu "Eletrônicos" e a presença das categorias na página.	smoke, menus_eletronicos
CT02 - Pesquisa de Produtos	Verifica a funcionalidade de pesquisa por nome de produto.	smoke, pesquisa_produtos
CT03 - Adicionar Produto no Carrinho	Garante que o produto “Console Xbox Series S” pode ser adicionado ao carrinho.	adicionar_carrinho
CT04 - Remover Produto do Carrinho	Verifica se é possível remover o produto do carrinho e deixá-lo vazio.	remover_carrinho
💻 Pré-requisitos

Instalar Python (3.8 ou superior)

python --version


Instalar o Robot Framework

pip install robotframework


Instalar SeleniumLibrary

pip install robotframework-seleniumlibrary


Instalar o WebDriver Manager (para Chrome)

pip install webdriver-manager


Ter o navegador Google Chrome instalado

🚀 Como Executar os Testes

Clonar o repositório:

git clone https://github.com/fabiano00760/RobotFremework_webTeste.git
cd automacao-amazon-robot


Executar todos os testes:

robot tests/amazon_tests.robot


Executar testes por tag:

robot -i smoke tests/amazon_tests.robot
robot -i adicionar_carrinho tests/amazon_tests.robot


Gerar logs e reports:
Após a execução, os relatórios serão gerados automaticamente:

log.html
report.html
output.xml

📋 Boas Práticas Aplicadas

Estrutura modular com Page Objects

Uso de variáveis globais para locators e URLs

Palavras-chave reutilizáveis

Captura de tela no teardown

Padronização de nomenclatura e documentação dos testes

🧠 Possíveis Extensões Futuras

Integração com CI/CD (GitHub Actions, Jenkins, etc.)

Suporte a testes mobile (AppiumLibrary)

Validação de login e autenticação

Relatórios customizados com Allure Framework
