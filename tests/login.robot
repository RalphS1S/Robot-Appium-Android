*** Settings ***
Resource    ../resources/android.robot

Test Setup      Abrir App
Test Teardown   Fechar App

*** Test Cases ***
Login no app
    Dado que acesso a tela de login
    Quando submeto minhas credencias "tony@stark.com" e "pass123"
    Então devo ver a tela minha conta

*** Keywords ***
Dado que acesso a tela de login
    Click Element   id:qaninja.com.pixel:id/accountButt
    Sleep           10