ALGORITMO "anguloRelogio"
// Fun��o : Calcular o �ngulo entre os ponteiros do rel�gio.
// Autor : Maikon Camilo Gosch.
// Data : 13/03/2018.
VAR
    horas,minutos:INTEIRO
    retornaAnguloRelogio:REAL
    resposta,repetirValidacao:CARACTER
    validacao:LOGICO
INICIO
       ESCREVAL("=================================")
       ESCREVAL("PROGRAMA PARA CALCULAR O �NGULO ENTRE OS PONTEIROS DE UM REL�GIO")
          resposta <- "s"
          REPITA
             ESCREVAL("=================================")
             ESCREVA("Digite um valor para horas: ")
             LEIA(horas)
             ESCREVA("Digite um valor para minutos: ")
             LEIA(minutos)
             ESCREVAL("=================================")
             validacao <- verdadeiro

             //Valida os valores inseridos para que caso o usu�rio digite algum valor inv�lido, o sistema informe � ele.
             SE (horas > 12) OU (horas < 0) ENTAO
                LIMPATELA
                ESCREVAL("=================================")
                ESCREVAL("Valor inserido para horas inv�lido. Tente Novamente.")
                validacao <- falso
             FIMSE
             SE (minutos > 60) OU (minutos < 0) ENTAO
                LIMPATELA
                ESCREVAL("=================================")
                ESCREVAL("Valor inserido para minutos inv�lido. Tente Novamente.")
                validacao <- falso
             FIMSE

             // Caso os valores inseridos estejam corretos ir� rodar o programa
             SE (validacao = verdadeiro) ENTAO

                // Valida os valores inseridos para que caso sejam o ultimo valor da hora/minuto, resetem.
                SE (horas = 12) ENTAO
                   horas <- 0
                FIMSE
                SE (minutos = 60) ENTAO
                    minutos <- 0
                FIMSE

                // Determina a posi��o da hora em um rel�gio de ponteiro para que o calculo come�e partindo da posi��o certa.
                SE (horas <= 12) ENTAO
                   horas <- horas * 30
                FIMSE

                // Calcula o �ngulo entre os ponteiros do rel�gio
                retornaAnguloRelogio <- ABS((minutos * 6 - horas))
                ESCREVAL("O angulo � de:",retornaAnguloRelogio," graus entre os ponteiros do rel�gio.")
                ESCREVAL("=================================")

                // Verifica se o usu�rio deseja fazer outra opera��o
                repetirValidacao <- "s"
                REPITA
                   ESCREVAL("Deseja fazer uma nova opera��o? (S / N).")
                   LEIA(resposta)

                   // Valida os valores inseridos e informa o usu�rio caso algo esteja errado.
                   ESCOLHA resposta
                CASO "s"
                    LIMPATELA
                    ESCREVAL("=================================")
                    ESCREVAL("Bem vindo Novamente.")
                    INTERROMPA
                CASO "n"
                    LIMPATELA
                    ESCREVAL("=================================")
                    ESCREVAL("Obrigado por utilizar o programa.")
                    INTERROMPA
                OUTROCASO
                    LIMPATELA
                    ESCREVAL("=================================")
                    ESCREVAL("LETRA INV�LIDA. Tente Novamente.")
                    ESCREVAL("=================================")
             FIMESCOLHA
                 ATE repetirValidacao = "n"
             FIMSE
          ATE resposta = "n"
FIMALGORITMO
