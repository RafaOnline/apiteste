# language: pt 

Funcionalidade: Pesquisar Produtos
    Para averiguar informacoes
    O usuario do sistema
    Deseja poder consultar informacoes dos produtos

    Cenario: Buscas informacoes de produtos
        Dado que o usuario consulte informacoes dos produtos
        Quando ele realiar a pesquisa
        Entao uma lista de produtos deve retornar
 
   
    Cenario: Cadastrar produto
        Dado que o usuario cadastre um novo produto
        Quando ele enviar as informacoes do produto
        Entao esse produto sera cadastrado
