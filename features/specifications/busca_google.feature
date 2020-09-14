#language: pt
Funcionalidade: Busca Google
    Eu quero realizar uma busca
    A fim de encontrar o conteúdo desejado

Cenário: Realizando uma busca no google
  Dado que estou na página principal do Google
  Quando preencho o campo de busca pelo conteudo "Checklist Fácil"
  E eu clico no botão "Pesquisa Google"
  Então o Google retorna o link do "Checklist Fácil"

Cenário: Abrir o link do Resultado
  Dado que realizei a busca pelo conteudo "Checklist Fácil"
  Quando eu clico no link do "Checklist Fácil"
  Então a página do Checklist Fácil é aberta
