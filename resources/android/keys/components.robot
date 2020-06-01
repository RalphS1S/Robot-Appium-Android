

*** Keywords ***
## Helpers
Acessar Home
    @{elements}=    Get Webelements     ${MENU_LIST}
    Click Element   @{elements}[0]

Acessar Lista de Desejos
    @{elements}=    Get Webelements     ${MENU_LIST}
    Click Element   @{elements}[1]

Acessa Carrinho
    @{elements}=    Get Webelements     ${MENU_LIST}
    Click Element   @{elements}[2]

Acessa Sobre
    @{elements}=    Get Webelements     ${MENU_LIST}
    Click Element   @{elements}[3]

## Android components
Devo ver um popup com a mensagem:
    [Arguments]     ${expect_message}

    Wait Until Page Contains Element        ${POPUP}
    Element Text Should Be                  ${POPUP}       ${expect_message}

