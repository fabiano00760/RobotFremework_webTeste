*** Settings ***

Resource   F:\RobotFremework_webTeste\RobotFremework\Teste_APP\resource
*** Libraries ***
Library    FakerLibrary              


*** Keywords ***

*** Test Cases ***
Email com Domínio Personalizado
    ${nome}     FakerLibrary.first_name
    ${sobrenome}    FakerLibrary.last_name
    ${email}    Set Variable    ${nome}.${sobrenome}@meudominio.com
    Log         E-mail: ${email}



