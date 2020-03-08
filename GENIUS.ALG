Algoritmo "GENIUS"
// Disciplina  : [Contrução de Algoritmo]
// Professor   : Eugenio
// Autor(a)    : Nicolas Matheus Machado Pilatti
// Data atual  : 12/09/2019
//----------------------------------------------------------------------------

//Pricipal
Const MAX = 20
Var
   tela,ordem:caractere
   x,y,ale,comeca,c,ee,b,d,fase,dificuldade,cont,pontos,teste:inteiro
Inicio
   dificuldade<-2
   teste<-2
   repita
      comeca<-0
      cont<-0
      se (teste>1) entao
         fase<-0
         enquanto (comeca<>1) faca//Tela Inicial
            Escreval("              GENIUS")
            Escreval()
            Escreval()
            Escreval("       ___________________")
            Escreval("       |                 |")
            Escreval("       |                 |")
            Escreval("       |       UEZO      |")
            Escreval("       |                 |")
            Escreval("       |                 |")
            Escreval("       |_________________|")
            Escreval()
            se pontos>0 entao//Tela de derrota
               escreval()
               Escreval("Você Errou amiguinho")
               Escreval("Ultimo Record: ",pontos)

            fimse
            pontos<-0
            Escreval("Deseja começar o jogo?")
            Escreval()
            Escreval("|SIM|-1         |NÃO|-2")

            leia (comeca)

            se comeca<>1 entao
               limpatela
               Escreval("Vai na Paz Irmão")
               Escreval(" Fica com ZEUS")
               fimalgoritmo
            fimse

            limpatela
         fimenquanto

      senao
         dificuldade<-dificuldade+2
         fase<-fase+1
         tela<-""
         ordem<-""
         cont<-0
         pontos<-pontos+2
      fimse
      repita//Nucleo do Jogo
         c<-0
         ee<-0
         d<-0
         b<-0
         ale<-0
         repita
            ale<- randi(5)
         ate ale>0
         escolha ale
         caso 1
            c<-1
            tela<-tela+("1")
         caso 2
            ee<-2
            tela<-tela+("2")
         caso 3
            d<-3
            tela<-tela+("3")
         caso 4
            b<-4
            tela<-tela+("4")
         fimescolha

         Escreval("              GENIUS")
         Escreval("Fase ",fase)
         Escreval()
         Escreval("       ___________________    ")
         Escreval("       |       ",c,"        |      ")
         Escreval("       |                 |")
         Escreval("       |",ee,"            ",d," |      ")
         Escreval("       |                 |")
         Escreval("       |       ",b,"        |")
         Escreval("       |_________________|      ")

         cont<-cont+1
         timer (500)
         Escreval()
         timer (0)
         limpatela
      ate cont>=dificuldade

      //Verificação
      Escreval("              GENIUS")
      Escreval("Digite a ordem:")
      leia(ordem)
      se tela<>ordem entao
         tela<-""
         teste<-2
      senao
         teste<-1
      fimse
      limpatela
   ate dificuldade>MAX
   Escreval("              GENIUS")//Tela de Vitoria
   Escreval()
   Escreval()
   Escreval("       ___________________")
   Escreval("       |                 |")
   Escreval("       |                 |")
   Escreval("       |       UEZO      |")
   Escreval("       |                 |")
   Escreval("       |                 |")
   Escreval("       |_________________|")
   Escreval()
   Escreval("       Parabens voce Venceu")
   Escreval()
   Escreval("Sua pontuação foi: ",pontos)
   escreval()
   Escreval("            Novo Record")

Fimalgoritmo