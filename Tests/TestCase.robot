Run Test Suite
*** Settings ***
Documentation     A test suite for register and login on Mercado Livre Website.
...
...               Keywords are imported from the resource file
Resource          ../Resources/keywords.resource
Suite Setup       Open Browser To Register Page
Suite Teardown    End Session

*** Test Cases ***
Inserir Email Com Credenciais Inválidas
    [Documentation]    Verifica se é possivel adicionar um email invalido.
    Input Email With Invalid Data
    Capture Page Screenshot

Inserir Email Com Credenciais Validas
    [Documentation]    Verifica se é possivel adicionar um email valido
    Input Email With Valid Data
    Capture Page Screenshot

Validar Nome E Sobrenome Em Branco
    [Documentation]    Verifica se é possivel progredir com os campos de Nome e Sobrenome em Branco
    Input Name And Lastname With Empty Data
    Capture Page Screenshot

Inserir Nome E Sobrenome Com Credenciais Validas
    [Documentation]    Verifica se é possivel adicionar nome e sobrenome validos
    Input Name And Lastname With Valid Data
    Capture Page Screenshot

Inserir Numero De Telefone Invalido
    [Documentation]    Verifica se é possivel adicionar um telefone com caracteres invalidos
    Input Invalid Phone Number
    Capture Page Screenshot

Inserir Numero De Telefone Valido
    [Documentation]    Verifica se é possivel adicionar um telefone valido
    Input Valid Phone Number
    Capture Page Screenshot

Validar Password Em Branco
    [Documentation]    Verifica se é possivel progredir com a senha em Branco
    Input Blank Space On Password Register Page
    Capture Page Screenshot

Inserir Password Invalido
    [Documentation]    Verifica se é possivel adicionar uma senha invalida
    Input Invalid Password On Register Page
    Capture Page Screenshot

Inserir Password Valido
    [Documentation]    Verifica se é possivel adicionar uma senha valida
    Input Valid Password On Register Page
    Capture Page Screenshot

Login: Campo De Usuario Em Branco
    [Documentation]    Verifica se é possivel progredir com o campo de usuario em branco na pagina de Login
    Login With Blank Email
    Capture Page Screenshot

Login: Campo de Usuario Invalido
    [Documentation]    Verifica se é possivel progredir com o campo de usuario invalido na pagina de Login
    Login With Invalid Email
    Capture Page Screenshot
