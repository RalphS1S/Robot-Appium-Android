*** Settings ***
Resource    ../resources/android.robot

Test Setup      Abrir App
Test Teardown   Fechar App

# ATDD - Sem Gherkin

*** Test Cases ***
Login no app
    Acesso a tela de login
    Submeto minhas credencias "tony@stark.com" e "pass123"
    Devo ver "Tony Stark" na tela minha conta

Senha inválida
    [tags]      inv_pass
    [Template]  Tentar logar
    tony@stark.com      123abc     Usuário e/ou senha inválidos.

Usuário não existe
    [Template]  Tentar logar
    404@gmail.com      123abc      Usuário e/ou senha inválidos.

*** Keywords ***
Tentar logar
    [Arguments]     ${email}    ${senha}     ${saida}

    Acesso a tela de login
    Submeto minhas credencias "${email}" e "${senha}"
    Devo ver um popup com a mensagem:
    ...     ${saida}
