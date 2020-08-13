#language: pt
Funcionalidade: Cadastro
   Para usar o aplicativo
   Como um usuáiro
   Quero fazer um cadastro utilizando Email, Celular e Facebook

    Contexto:
        Dado que eu estou na tela de Registro do Ifood 

    @CT001 @CredenciaisVálidas @Facebook
    Cenário: Mostrar a tela inicial do Ifood ao tentar fazer login com todas as informações preenchidas
        Quando Eu clico no botão Facebook
        Então preencho o campo email com "<email>" 
        E preencho o campo senha com "<senha>"
        Quando clico no botão Login 
        Então vejo a tela Inicial do Ifood

        Exemplos:
            | email       | senha    |
            | Luc45 N3v3s | 00321991 |

    @CT002 @CredenciaisInválidas @Facebook
    Cenário: Mostrar mensagem de erro quando eu tento fazer login com informações inválidas 
        Quando Eu clico no botão Facebook
        Então preencho o campo email com "<email>"
        E preencho o campo senha com "<senha>"
        Quando clico no botão Login
        Então Vejo mensagem de erro

        Examples:
            | email         | senha    |
            | J0nnhy P30p13 | 13001988 |
            | 00000 00000   | 00000000 |

    @CT003 @CredenciaisVálidas @Celular
    Cenário: Mostrar a tela inicial do Ifood ao tentar fazer login com todas as informações preenchidas
        Quando Eu clico no botão Facebook
        Então preencho o campo celular com "<celular>" 
        E preencho o campo senha com "<senha>"
        Quando clico no botão Login 
        Então vejo a tela Inicial do Ifood

        Examples:
            | celular     | senha    |
            | Luc45 N3v3s | 00321991 |

     @CT004 @CredenciaisInválidas @Celular
    Cenário: Mostrar mensagem de erro quando eu tento fazer login com informações inválidas 
        Quando Eu clico no botão Celular
        Então preencho o campo celular com "<celular>"
        E preencho o campo senha com "<senha>"
        Quando clico no botão Login
        Então Vejo mensagem de erro

        Examples:
            | email         | senha    |
            | J0nnhy P30p13 | 13001988 |
            | 00000 00000   | 00000000 |
    
       @CT005 @CredenciaisVálidas @Email
    Cenário: Mostrar a tela inicial do Ifood ao tentar fazer login com todas as informações preenchidas
        Quando Eu clico no botão Email
        Então preencho o campo email com "<email>" 
        E preencho o campo senha com "<senha>"
        Quando clico no botão Login 
        Então vejo a tela Inicial do Ifood

        Examples: 
            | email       | senha    |
            | Luc45 N3v3s | 00321991 |

     @CT006 @CredenciaisInválidas @Email
    Cenário: Mostrar mensagem de erro quando eu tento fazer login com informações inválidas 
        Quando Eu clico no botão Email
        Então preencho o campo email com "<email>"
        E preencho o campo senha com "<senha>"
        Quando clico no botão Login
        Então Vejo mensagem de erro

        Examples:
            | email         | senha    |
            | J0nnhy P30p13 | 13001988 |
            | 00000 00000   | 00000000 |