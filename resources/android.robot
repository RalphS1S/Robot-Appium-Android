*** Settings ***
Library     AppiumLibrary
Library     String

Library     ../libs/api_helper.py

Resource    android/elements.robot

Resource    android/keys/login.robot
Resource    android/keys/cart.robot
Resource    android/keys/components.robot

*** Variables ***
${URL}              http://localhost:4723/wd/hub
${deviceName}       Pixel 2 API 28
${app}              ${CURDIR}/app/pixel.apk
${timeout}          10

*** Keywords ***
### hooks
Abrir App
    Set Appium Timeout  ${timeout} 
    Open Application    ${URL}
    ...                 platformName=Android
    ...                 deviceName=Pastel
    ...                 app=${app}
    ...                 automationName=uiautomator2
    ...                 autoGrantPerssions=true

Fechar App
    Capture Page Screenshot
    Close Application





