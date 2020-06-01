
*** Keywords ***
Acesso a tela de login
    Wait Until Page Contains Element     ${BT_ACCOUNT}       ${timeout}

    Click Element   ${BT_ACCOUNT}

Submeto minhas credencias "${email}" e "${pass}"
    Wait Until Page Contains        Login       ${timeout}

    Input Text      ${INPUT_EMAIL}     ${email}
    Input Text      ${INPUT_PASS}     ${pass}
    Click Element   ${BT_LOGIN}

Devo ver "${expect_user}" na tela minha conta
    Wait Until Page Contains Element     ${BT_ACCOUNT}       ${timeout}

    Click Element   ${BT_ACCOUNT}
    
    Wait Until Page Contains    ${expect_user}      ${timeout}