*** Variables ***
${URL}                 https://www.amazon.com.br
${BROWSER}             Chrome

${menu_eletronicos}    //a[@data-csa-c-content-id="nav_cs_electronics"]
${titulo_eletronicos}  (//*[@id="0"]/div/div/h2/span)[1]
${campo_pesquisa}      id=twotabsearchtextbox
${botao_pesquisa}      xpath=//*[@id="nav-search-submit-button"]
${console}             xpath=(//span[contains(text(),'controle xbox series s')])[1]
${titulo_esperado}     xpath=(//*[@id="0"]/div/div/h2/span)[1]
