Run Test Suite
*** Settings ***
Documentation     A test suite for register and login.
...
...               Keywords are imported from the resource file
Resource          keywords.resource
Suite Setup       Open Browser To Register Page
Suite Teardown    End Session

*** Test Cases ***
Criar Usuário Com Credenciais Validas
    [Documentation]    Verifica se é possivel criar um novo usuario com sucesso e fazer login
    Input Email With Valid Data
    Input Name And Lastname With Valid Data
    Validate Phone Number
    Add Password On Register Page

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


