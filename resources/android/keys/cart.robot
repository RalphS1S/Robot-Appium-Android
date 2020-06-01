

*** Keywords ***
Faço login com as credenciais "${email}" e "${pass}"
    Clean Cart    ${email}

    login.Acesso a tela de login
    login.Submeto minhas credencias "${email}" e "${pass}"

Acesso a categoria "${category}"
    ${target}=    Convert To Uppercase    ${category}

    Wait Until Page Contains    ${target}
    Click Text                  ${target}

Escolho o produto "${product}"
    Wait Until Page Contains    ${product}
    Click Text                  ${product}
    Set Test Variable           ${product}

Adiciono este item ao carrinho
    Wait Until Page Contains    ${product}
    Click Text                  ADICIONAR AO CARRINHO

Tenho o seguinte produto no meu carrinho:
    [Arguments]    ${product}    ${category}

    Acesso a categoria "${category}"
    Escolho o produto "${product}"
    Adiciono este item ao carrinho

    Wait Until Page Contains Element    ${POPUP_OK}
    Click Element                       ${POPUP_OK}

    Go Back
    Wait Until Page Contains    ${product}
    Go Back

    components.Acessa Carrinho
    Click Element                 ${REFRESH_CART}

Finalizo a compra com Paypal
    Click Element    ${BT_CHECK}

    Wait Until Page Contains Element    ${PAY_EMAIL}
    Input Text                          ${PAY_EMAIL}    test@qaninja.io 

    Wait Until Page Contains Element    ${PAY_PASS}     
    Input Text                          ${PAY_PASS}     qaninja123456
    Click Element                       ${PAY_LOGIN}    

    Wait Until Page Contains Element    ${PAY_PAY}
    Click Element                       ${PAY_PAY}