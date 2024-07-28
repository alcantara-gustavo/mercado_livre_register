Run Test Suite
*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.
Library           SeleniumLibrary

*** Variables ***
${REGISTER_URL}         https://www.mercadolivre.com.br/hub/registration?from_landing=true&contextual=unified_normal&redirect_url=https%3A%2F%2Fwww.mercadolivre.com.br%2F&entity=no_apply#nav-header
${BROWSER}     Firefox
${USERNAME}    gustavotester95@gmail.com
${PHONE}       11958486914
${PASSWORD}    Teste@1008
${FIRSTNAME}   Gustavo
${LASTNAME}    Tester

*** Keywords ***
Open Browser To Register Page
    Open Browser    ${REGISTER_URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    //button[@id="hub-item-button"]    10s

End Session
    Capture Page Screenshot
    Close Browser

Input Email With Valid Data
    Wait Until Page Contains Element    //input[@id="enter-email-input"]
    Input Text    //input[@id="enter-email-input"]    ${USERNAME}
    Wait Until Page Contains Element    //button[@id=":R1td9:"]
    Click Button  //button[@id=":R1td9:"]
    Wait Until Page Contains Element    //button[@id="hub-item-button"]

Input Email With Invalid Data
    Click Button    //button[@id="hub-item-button"]
    Wait Until Page Contains Element    //input[@id="enter-email-input"]
    Input Text    //*[@id="enter-email-input"]    gustavo.com
    Wait Until Page Contains Element    //button[@id="hub-item-button"]

Input Name And Lastname With Valid Data
    Input Text    //input[@id="firstName"]    ${FIRSTNAME}
    Input Text    //input[@id="lastName"]    ${LASTNAME}
    Click Button    //button[@id=":R3p:"]
    Wait Until Page Contains Element    //button[@id="hub-item-button"]

Input Name And Lastname With Empty Data
    Click button    //button[@id="hub-item-button"]
    Wait Until Page Contains Element    //input[@id="firstName"]
    Click Button    //button[@id=":R3p:"]

Input Invalid Phone Number
    Wait Until Page Contains Element    locator
Input Valid Phone Number
    Click Button    //button[@id="hub-item-button"]    
    Wait Until Page Contains Element    //input[@id=":R1ot1:"]
    Input Text    //input[@id=":R1ot1:"]    ${PHONE}
    Click Button    //button[@id=":R38t1:"]
    Sleep    20s
    Wait Until Page Contains Element    //button[@id="hub-item-button"]
    

Add Password On Register Page
    Click Button    //*[@id="hub-item-button"]
    Wait Until Page Contains Element    //*[@id="enter-password"]
    Input Password    //*[@id="enter-password"]    ${PASSWORD}
    Input Password    //*[@id="confirm-password"]    ${PASSWORD}
    Click Button      //button[@id=":R3cp:"]
    Wait Until Page Contains Element    //*[@id="nav-cart"]

  