ALGORITMO "anguloRelogio"
// Função : Calcular o ângulo entre os ponteiros do relógio.
// Autor : Maikon Camilo Gosch.
// Data : 13/03/2018.
VAR
    horas,minutos:INTEIRO
    retornaAnguloRelogio:REAL
    resposta,repetirValidacao:CARACTER
    validacao:LOGICO
INICIO
       ESCREVAL("=================================")
       ESCREVAL("PROGRAMA PARA CALCULAR O ÂNGULO ENTRE OS PONTEIROS DE UM RELÓGIO")
          resposta <- "s"
          REPITA
             ESCREVAL("=================================")
             ESCREVA("Digite um valor para horas: ")
             LEIA(horas)
             ESCREVA("Digite um valor para minutos: ")
             LEIA(minutos)
             ESCREVAL("=================================")
             validacao <- verdadeiro

             //Valida os valores inseridos para que caso o usuário digite algum valor inválido, o sistema informe à ele.
             SE (horas > 12) OU (horas < 0) ENTAO
                LIMPATELA
                ESCREVAL("=================================")
                ESCREVAL("Valor inserido para horas inválido. Tente Novamente.")
                validacao <- falso
             FIMSE
             SE (minutos > 60) OU (minutos < 0) ENTAO
                LIMPATELA
                ESCREVAL("=================================")
                ESCREVAL("Valor inserido para minutos inválido. Tente Novamente.")
                validacao <- falso
             FIMSE

             // Caso os valores inseridos estejam corretos irá rodar o programa
             SE (validacao = verdadeiro) ENTAO

                // Valida os valores inseridos para que caso sejam o ultimo valor da hora/minuto, resetem.
                SE (horas = 12) ENTAO
                   horas <- 0
                FIMSE
                SE (minutos = 60) ENTAO
                    minutos <- 0
                FIMSE

                // Determina a posição da hora em um relógio de ponteiro para que o calculo começe partindo da posição certa.
                SE (horas <= 12) ENTAO
                   horas <- horas * 30
                FIMSE

                // Calcula o ângulo entre os ponteiros do relógio
                retornaAnguloRelogio <- ABS((minutos * 6 - horas))
                ESCREVAL("O angulo é de:",retornaAnguloRelogio," graus entre os ponteiros do relógio.")
                ESCREVAL("=================================")

                // Verifica se o usuário deseja fazer outra operação
                repetirValidacao <- "s"
                REPITA
                   ESCREVAL("Deseja fazer uma nova operação? (S / N).")
                   LEIA(resposta)

                   // Valida os valores inseridos e informa o usuário caso algo esteja errado.
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
                    ESCREVAL("LETRA INVÁLIDA. Tente Novamente.")
                    ESCREVAL("=================================")
             FIMESCOLHA
                 ATE repetirValidacao = "n"
             FIMSE
          ATE resposta = "n"
FIMALGORITMO
