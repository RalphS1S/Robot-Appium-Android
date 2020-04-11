*** Settings ***
Library     AppiumLibrary

*** Variables ***
${URL}              http://localhost:4723/wd/hub
${deviceName}       Pixel 2 API 28
${app}              ${CURDIR}/app/pixel.apk

*** Keywords ***
### hooks
Abrir App
    Open Application    ${URL}
    ...                 plataformName=Android
    ...                 deviceName=${deviceName}
    ...                 app=${app}
    ...                 automationName=uiautomator2
    ...                 autoGrantPerssions=true

Fechar App
    Capture Page Screenshot
    Close Application