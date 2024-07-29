Run Test Suite
*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.
Library           SeleniumLibrary

*** Variables ***
${REGISTER_URL}         https://www.mercadolivre.com.br/hub/registration?from_landing=true&contextual=unified_normal&redirect_url=https%3A%2F%2Fwww.mercadolivre.com.br%2F&entity=no_apply#nav-header
${BROWSER}     Chrome
${USERNAME}    alcantara.dev95@gmail.com
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
    Input Text    //input[@id="enter-email-input"]    gustavo.com
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
    Click Button    //button[@id="hub-item-button"]
    Wait Until Page Contains Element    //input[@id=":R1ot1:"]
    Input Text    //input[@id=":R1ot1:"]    ************
    Click Button    //button[@id=":R38t1:"]
    Wait Until Page Contains Element    //span[@id=":R1ot1:-message"// and @text="O número inserido é inválido."]

Input Valid Phone Number
    Wait Until Page Contains Element    //input[@id=":R1ot1:"]
    Clear Element Text    //input[@id=":R1ot1:"]
    Input Text    //input[@id=":R1ot1:"]    ${PHONE}
    Click Button    //button[@id=":R38t1:"]
    Sleep    20s
    Wait Until Page Contains Element    //button[@id="hub-item-button"]
    
Input Blank Space On Password Register Page
    Click Button    //*[@id="hub-item-button"]
    Wait Until Page Contains Element    //input[@id="enter-password"]
    Click Button    //button[@id=":R3cp:"]
    Wait Until Page Contains Element    //p[@class="input-password-card__rule-wording input-password-card__rule-wording--error" and @text="Mínimo de 8 caracteres com letras e números."]

Input Invalid Password On Register Page
    Wait Until Page Contains Element    //input[@id="enter-password"]
    Input Password    //input[@id="enter-password"]    1234
    Input Password    //input[@id="confirm-password"]    1234
    Click Button      //button[@id=":R3cp:"]
    Wait Until Page Contains Element    //p[@class="input-password-card__rule-wording input-password-card__rule-wording--error" and @text="Sem sequências, como 1234 ou ABCD."]

Input Valid Password On Register Page
    Wait Until Page Contains Element    //input[@id="enter-password"]
    Input Password    //input[@id="enter-password"]    ${PASSWORD}
    Input Password    //input[@id="confirm-password"]    ${PASSWORD}
    Click Button      //button[@id=":R3cp:"]
    Wait Until Page Contains Element    //a[@data-link-id="login" and @text="Entre"]

Login With Blank Email
    Wait Until Page Contains Element    //a[@data-link-id="login" and @text="Entre"]
    Click Element    //a[@data-link-id="login" and @text="Entre"]
    Wait Until Page Contains Element    //input[@id="user_id"]
    Click Button    //button[@id=":Rajhh:"]
    Wait Until Page Contains Element    //div[@id="identification-message"]

Login With Invalid Email
    Wait Until Page Contains Element    //input[@id="user_id"]
    Input Text    //input[@id="user_id"]    gustavo.com
    Click Button    //button[@id=":Rajhh:"]
    Wait Until Page Contains Element    //div[@id="identification-message" and @text="Revise o seu e-mail ou usuário."]
