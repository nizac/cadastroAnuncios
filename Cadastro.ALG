Algoritmo "teste_cadastro_anuncio_capgemini"
//
// Descrição   : sistema que permita o cadastro de anúncios
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/05/2021
Var
   opcao, i, n : inteiro
   MaxVisual,valorInvestido,cliques,compartilhamentos,porcentagem, data, valorTotalInvestido, quantidadeMaximaVisualizacoes, quantidadeMaximaCliques, quantidadeMaximaCompartilhamentos : real

   nomeAnuncio : vetor [0..3] de caractere
   cliente : vetor [0..3] de caractere
   dataInicio   : vetor [0..3] de inteiro
   dataTermino  : vetor [0..3] de inteiro
   investimentoDia : vetor [0..3] de real

Inicio

   opcao <- 0

   enquanto opcao <> 9 faca

      escreval("Selecione uma opção: ")
      escreval("1 - Cadastrar")
      escreval("2 - Consultar Nome")
      escreval("3 - Consultar Intervalo de tempo")
      escreval("4 - Calcular")
      escreval("9 - Sair")
      leia(opcao)
      escreval

      // ...
      se opcao = 1 entao

         escreva("Nome do anuncio: ")
         leia(nomeAnuncio[n])
         escreva("Cliente: ")
         leia(cliente[n])
         escreva("Data de Inicio: ")
         leia(dataInicio[n])
         escreva("Data de termino: ")
         leia(dataTermino[n])
         escreva("Investimento por dia: ")
         leia(investimentoDia[n])
         escreval

      fimse

      se opcao = 2 entao
         // valor minimo por dia R$ 1,00;( R$1,00 para 30 visualizações)
         // representar data neste formato: dia_mês_ano

         escreval("Qual cliente deseja consultar: ")
         leia(cliente[n])
         escreval

         para i de 0 ate n passo -1 faca

            escreval("Cliente:", cliente[i])
            escreval("Nome do anuncio: ", nomeAnuncio[i])
            escreval("Data de Inicio: ", dataInicio[i])
            escreval("Data de termino: ", dataTermino[i])
            escreval("Investimento por dia: ", investimentoDia[i])
            escreval

            porcentagem <- 30/15*100
            
            data <- (datatermino[i] - dataInicio[i])
            
            valorTotalInvestido <- data * investimentoDia[i]

            quantidadeMaximaVisualizacoes <- (30*valorTotalInvestido) + porcentagem
            
             //	a cada 100 pessoas que visualizam o anúncio 12 clicam nele.
             
            quantidadeMaximaCliques <- quantidadeMaximaVisualizacoes / 100
            
             //	a cada 20 pessoas que clicam no anúncio 3 compartilham nas redes sociais.

            quantidadeMaximaCompartilhamentos <- (quantidadeMaximaCliques / 20)*3

            escreval("valor total investido: ",valorTotalInvestido:8:2)
            escreval("quantidade maxima de visualizacoes: ",quantidadeMaximaVisualizacoes)
            escreval("quantidade maxima de cliques: ", quantidadeMaximaCliques)
            escreval("quantidade maxima de compartilhamentos: ",quantidadeMaximaCompartilhamentos)
            escreval
         fimpara

      fimse

      se opcao = 3 entao
         // valor minimo por dia R$ 1,00;( R$1,00 para 30 visualizações)
         // representar data neste formato: dia_mês_ano

         escreval("Digite a data inicial: ")
         leia(dataInicio[n])
         escreval

         para i de 0 ate n passo -1 faca

            escreval("Data de Inicio: ", dataInicio[i])
            escreval("Data de termino: ", dataTermino[i])
            escreval("Cliente:", cliente[i])
            escreval("Nome do anuncio: ", nomeAnuncio[i])
            escreval("Investimento por dia: ", investimentoDia[i])
            escreval

            porcentagem <- 30/15*100

            data <- (datatermino[i] - dataInicio[i])

            valorTotalInvestido <- data * investimentoDia[i]

            quantidadeMaximaVisualizacoes <- (30*valorTotalInvestido) + porcentagem

             //	a cada 100 pessoas que visualizam o anúncio 12 clicam nele.

            quantidadeMaximaCliques <- quantidadeMaximaVisualizacoes / 100

             //	a cada 20 pessoas que clicam no anúncio 3 compartilham nas redes sociais.

            quantidadeMaximaCompartilhamentos <- (quantidadeMaximaCliques / 20)*3

            escreval("valor total investido: ",valorTotalInvestido:8:2)
            escreval("quantidade maxima de visualizacoes: ",quantidadeMaximaVisualizacoes)
            escreval("quantidade maxima de cliques: ", quantidadeMaximaCliques)
            escreval("quantidade maxima de compartilhamentos: ",quantidadeMaximaCompartilhamentos)
            escreval
         fimpara

      fimse

      se opcao = 4 entao

         // estimar visualizações por valor a investir.
         // preço mínimo R$ 1,00 para cada 30 visualizações.
         // considerar porcentagem de 15% sobre as visualizações.

         escreval
         escreva("Qual valor do investimento em R$: ")
         leia(valorInvestido)

         Se valorInvestido = 1.00 entao

            MaxVisual <- 30

         fimse

         porcentagem <- 15

         se valorInvestido > 1.00 entao

            porcentagem <- 30 / 15 * 100
            MaxVisual <- (30 * valorInvestido) + porcentagem

         fimse

         escreva("Total= ", MaxVisual)
         escreval

      fimse

      se opcao = 9 entao
         // encerra o programa
      fimse

      escreval

   fimenquanto

Fimalgoritmo