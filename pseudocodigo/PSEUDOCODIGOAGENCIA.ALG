Algoritmo "pseudocodigoAgencia"
//Usando conceitos de programação estruturada (Vetor), criar em pseudocódigo
//um menu para simular um cadastro para uma agência de viagens com as seguintes
//funções: cadastro de cliente e cadastro de destino, criar também uma consulta
//para cada estrutura de dados.
Var
// Seção de Declarações das variáveis 
  opcao, i, numClientes,numDestinos, limite:inteiro
  cliente, destino :vetor [1..5] de caractere
  res: logico
  aux: caractere
procedimento menu()
var
inicio
   enquanto res = verdadeiro faca
    //  limpatela
      escreval("-----------------------------------")
      escreval("               MENU                ")
      escreval("-----------------------------------")
      escreval("Escolha uma das opções abaixo: ")
      escreval("1 - Cadastrar cliente")
      escreval("2 - Cadastrar destino")
      escreval("3 - Consultar cliente")
      escreval("4 - Consultar destino")
      escreval("5 - Sair")
      escreval("-----------------------------------")
      leia(opcao)

     escolha opcao
       caso 1
         cadastrarCliente()
       caso 2
         cadastrarDestino()
       caso 3
         consultarClientes()
       caso 4
         consultarDestinos()
       caso 5
         sairPrograma()
       outrocaso
         escreval("Opção inválida. Tente novamente.")
     fimEscolha
     
     escreval("Deseja continuar? ")
     escreval("Digite 's' para Sim, qualquer outra tecla pra Não")
     leia(aux)
     se aux = "s" entao
        res <- verdadeiro
     senao
        sairPrograma()
     fimSe

   fimEnquanto
fimProcedimento

procedimento cadastrarCliente()
var
inicio
   se numClientes >= limite entao
      escreval("Limite de clientes alcançado. Impossível cadastrar mais.")
   senao
      numClientes <- numClientes + 1
      escreval("Cadastro de cliente.")
      escreva("Digite o nome do cliente: ")
      leia(cliente[numClientes])
      escreval("Cliente ",cliente[numClientes]," cadastrado(a) com sucesso!")
   fimSe
fimProcedimento

procedimento cadastrarDestino()
var
inicio
   se numDestinos >= limite entao
      escreval("Limite de destinos alcançado. Impossível cadastrar mais.")
   senao
      numDestinos <- numDestinos + 1
      escreval("Cadastro de destinos.")
      escreva("Digite o nome do destino: ")
      leia(destino[numDestinos])
      escreval("Destino ",destino[numDestinos]," cadastrado(a) com sucesso!")
   fimSe
fimProcedimento

procedimento consultarClientes()
var
inicio
     se numClientes = 0 entao
        escreva("Nenhum cliente cadastrado.")
     senao
        para i <- 1 ate numClientes faca
             escreval("Cliente n",i,": ",cliente[i])
        fimPara
     fimSe
fimProcedimento

procedimento consultarDestinos()
var
inicio
     se numDestinos = 0 entao
        escreva("Nenhum cliente cadastrado.")
     senao
        para i <- 1 ate numDestinos faca
             escreval("Destino n",i,": ",destino[i])
        fimPara
     fimSe
fimProcedimento

procedimento sairPrograma()
inicio
    res <- falso
    escreval("Saindo...")
    escreva("Até logo!")
fimProcedimento
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
limite <- 5
numClientes <- 0
res <- verdadeiro
menu()

Fimalgoritmo