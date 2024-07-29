

# Testes de Cadastro e Login na Plataforma Mercado Livre

Este repositório contém a documentação e os scripts de testes manuais e automatizados para o fluxo de cadastro e login de usuários na plataforma Mercado Livre.

## Índice

- [Testes de Cadastro e Login na Plataforma Mercado Livre](#testes-de-cadastro-e-login-na-plataforma-mercado-livre)
  - [Índice](#índice)
  - [Objetivo](#objetivo)
  - [Escopo](#escopo)
  - [Cenários de Teste](#cenários-de-teste)
  - [Pré-requisitos](#pré-requisitos)
  - [Execução dos Testes](#execução-dos-testes)
    - [Testes Manuais](#testes-manuais)
    - [Testes Automatizados](#testes-automatizados)
  - [Evidências dos Testes](#evidências-dos-testes)
  - [Considerações Finais](#considerações-finais)

## Objetivo

O objetivo deste projeto é validar as funcionalidades de cadastro e login de usuários na plataforma Mercado Livre, assegurando que os usuários possam se cadastrar e logar com sucesso, acessando a página principal da plataforma.

## Escopo

Os testes cobrem as funcionalidades de:

-   Cadastro de novos usuários.
-   Login de usuários já cadastrados.
-   Validação de credenciais inválidas.
-   Validação de dados de cadastro inválidos.

## Cenários de Teste

1.  **Inserir Email com Credenciais Inválidas**
    
    -   Acessar a URL de cadastro.
    -   Inserir um email inválido.
    -   Clicar no botão Continuar.
    -   **Resultado Esperado:** Usuário não consegue se cadastrar e uma mensagem de erro aparece.
2.  **Inserir Email com Credenciais Válidas**
    
    -   Acessar a URL de login.
    -   Inserir email válido.
    -   Clicar no botão Continuar.
    -   **Resultado Esperado:** Cadastro de email do usuário realizado com sucesso e retorna para a pagina de registro.
    - 
3.  **Validar Nome E Sobrenome Em Branco**
    
    -   Acessar a URL de login.
    -   Email Inserido com sucesso
    -   Deixar campos de Nome e Sobrenome vazios.
    -   Clicar no botão Continuar.
    -   **Resultado Esperado:** Mensagem de erro informando dados inválidos.
    - 
4.  **Inserir Nome E Sobrenome Com Credenciais Validas**
    
    -   Acessar a URL de cadastro.
    -   Email Inserido com sucesso
    -   Preencher os campos de Nome e Sobrenome corretamente.
    -   Clicar no botão Continuar.
    -   **Resultado Esperado:** Cadastro de Nome e Sobrenome do usuário realizados com sucesso e retorna para a pagina de registro.

5.  **Inserir Numero De Telefone Inválido**
    
    -   Acessar a URL de cadastro.
    -   Email e Nome Inseridos com sucesso
    -   Preencher o campo de telefone com dados incorretos. Ex(*********)
    -   Clicar no botão Continuar.
    -   **Resultado Esperado:** O Usuário não consegue prosseguir com o cadastro de telefone e uma mensagem de erro aparece solicitando um formato válido.

6.  **Inserir Numero De Telefone Válido**
    
    -   Acessar a URL de cadastro.
    -   Email e Nome Inseridos com sucesso
    -   Preencher o campo de telefone com dados corretos.
    -   Clicar no botão Continuar.
    -   Preencher o campo de confirmação com o código enviado via WhatsApp.
    -   **Resultado Esperado:** O Usuário Consegue cadastrar o telefone com sucesso e retorna para a pagina inicial de registro.

7.  **Validar Password Em Branco**
    
    -   Acessar a URL de cadastro.
    -   Email, Nome e Telefone Inseridos com sucesso
    -   Deixar o campo de senha em branco.
    -   Clicar no botão Continuar.
    -   **Resultado Esperado:** O Usuário não consegue cadastrar uma senha e uma mensagem de erro é mostrada informando que a quantidade de caracteres está incorreta.

8.  **Inserir Password Invalido**
    
    -   Acessar a URL de cadastro.
    -   Email, Nome e Telefone Inseridos com sucesso
    -   Preencher o campo de senha com sequencias de letras ou números.
    -   Clicar no botão Continuar.
    -   **Resultado Esperado:** O Usuário não consegue cadastrar uma senha e uma mensagem de erro é mostrada informando que não é permitido inserir sequencias na senha.

9.  **Inserir Password Valido**
    
    -   Acessar a URL de cadastro.
    -   Email, Nome e Telefone Inseridos com sucesso
    -   Preencher o campo de senha com uma senha correta.
    -   Clicar no botão Continuar.
    -   **Resultado Esperado:** O Usuário consegue cadastrar a senha com sucesso e retorna para a pagina home do mercado livre.

10.  **Login: Campo De Usuário Em Branco**
    
    -   Acessar a Home Page do Mercado Livre.
    -   Deixar o campo de usuário em branco.
    -   Clicar no botão Continuar.
    -  **Resultado Esperado:** O Usuário não consegue realizar login e uma mensagem de erro aparece solicitando o preenchimento do campo.

12.  **Login: Campo de Usuário Invalido**
    
    -   Acessar a Home Page do Mercado Livre.
    -   Preencher o campo de usuário com dados inválidos.
    -   Clicar no botão Continuar.
    -   **Resultado Esperado:** O Usuário não consegue realizar login e uma mensagem de erro aparece solicitando o preenchimento do campo com credenciais validas.

13.  **Login: Campo de Usuário Válido**
    
    -   Acessar a Home Page do Mercado Livre.
    -   Preencher o campo de usuário com dados válidos.
    -   Clicar no botão Continuar.
    -   Selecionar a forma de autenticação
    -   Clicar no botão Continuar
    -   Preencher o campo com o código enviado através da autenticação selecionada
    -   **Resultado Esperado:** O Usuário consegue realizar o login e retorna para a pagina home do mercado livre.
    
## Pré-requisitos

Para executar os testes, é necessário ter:

-   Navegador Google Chrome ou similar.
-   Credenciais válidas para login (usuário e senha).
-   Robot Framework e SeleniumLibrary instalados (para testes automatizados).

## Execução dos Testes

### Testes Manuais

1.  Acesse a URL de cadastro/login: [Mercado Livre](https://www.mercadolivre.com.br/hub/registration?from_landing=true&contextual=unified_normal&redirect_url=https%3A%2F%2Fwww.mercadolivre.com.br%2F&entity=no_apply#nav-header).
2.  Siga os passos detalhados nos [Cenários de Teste](#cen%C3%A1rios-de-teste).
3.  Documente cada passo realizado e capture evidências dos resultados obtidos.

### Testes Automatizados

1.  Clone este repositório:
   
>`` git clone`` https://github.com/alcantara-gustavo/mercado_livre_register

2. Navegue até o diretório do projeto:
``cd mercado_livre_register``

3. Configure suas credenciais no arquivo `test.robot`:
```*** Variables ***
${USERNAME}    SEU_EMAIL_OU_TELEFONE
${PASSWORD}    SUA_SENHA
```

4. Execute os testes com o Robot Framework:
``robot -d  ./Report Tests``

6. O teste 12 **Login: Campo de Usuário Válido** não pode ser automatizado devido autenticação.

## Evidências dos Testes

As evidências dos testes incluem capturas de tela e logs de execução, que podem ser encontrados no diretório `Report` deste repositório.

-   **Evidência 1: Inserir Email com Credenciais Inválidas**
    -   Página de cadastro de email preenchida com dados inválidos.
    -   Mensagem de erro por credenciais inválidas.
    
-   **Evidência 2: Inserir Email com Credenciais Válidas**
    -   Página de cadastro de email preenchida com dados válidos.
    -   Página de registro após email bem-sucedido.
    
-   **Evidência 3: Validar Nome E Sobrenome Em Branco**
    -   Página de cadastro de nome em branco.
    -   Mensagem de erro por credenciais inválidas.
    
-   **Evidência 4: Inserir Nome E Sobrenome Com Credenciais Validas**
    -   Página de cadastro de nome preenchida com dados válidos.
    -   Página de registro após nome bem-sucedido.
    
    **Evidência 5: Inserir Numero De Telefone Inválido**
    -   Página de cadastro de telefone preenchida com dados inválidos.
    -   Mensagem de erro por dados inválidos.
    
    **Evidência 6: Inserir Numero De Telefone Válido**
    -   Página de cadastro de telefone preenchida com dados válidos.
    -   Página de registro após email bem-sucedido.

  **Evidência 7: Validar Password Em Branco**
    -   Página de cadastro de password deixada em branco.
    -   Mensagem de erro por dados inválidos.
  
  **Evidência 8: Inserir Password Inválido**
    -   Página de cadastro de password preenchida com dados inválidos.
    -   Mensagem de erro por dados inválidos.

**Evidência 9: Inserir Password Valido**
    -   Página de cadastro de password preenchida com dados válidos.
    -   Página home do mercado livre após password válido.

**Evidência 10: Login - Campo De Usuário Em Branco**
    -   Página de login deixada em branco.
    -   Mensagem de erro por dados inválidos.

**Evidência 11: Login - Campo de Usuário Invalido**
    -   Página de login preenchida com dados inválidos.
    -   Mensagem de erro por dados inválidos.

**Evidência 12: Login - Campo de Usuário Invalido**
    -   Página de login preenchida com dados válidos.
    -   Página home do mercado livre após login.


## Considerações Finais

Este projeto visa garantir a funcionalidade básica de cadastro e login de usuários na plataforma Mercado Livre. Para uma cobertura mais completa, recomenda-se a execução dos testes em diferentes navegadores e dispositivos. Mantenha os testes atualizados conforme mudanças na interface da plataforma.
