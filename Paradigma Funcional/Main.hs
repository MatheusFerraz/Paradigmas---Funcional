module Main where

import FuncoesGenericas (somaLista, multiplicaLista, subtraiValores, calculaMdc, calculaDelta, calculaSolQuadratica)

main = do
    putStrLn "Bem vindo ao programa que simula uma Calculadora simples!"
    putStrLn "O objetivo desse modulo e disparar funcoes dos outros modulos!"
    putStrLn ("A seguir, tem-se os resultados das operacoes de soma e multiplicacao com os elementos da Lista [1,2,3,4].")
    print ( somaLista [1,2,3,4] )
    print ( multiplicaLista [1,2,3,4] )
    putStrLn ("A seguir, apresenta-se o resultado da diferenca entre os numeros 10 e 5.")
    print( subtraiValores 10 5 )
    putStrLn ("A seguir, tem-se a exemplificacao do calculo do delta para a equacao x^2 + 8x + 16.")
    print ( calculaDelta 1 8 16 )
    putStrLn ("A seguir, tem-se a exemplificacao do calculo da solucao da equacao x^2 + 8x + 16.")
    print ( calculaSolQuadratica 1 8 16 )
    putStrLn ("A seguir, tem-se a exemplificacao do calculo do mdc entre os numeros 24 e 12.")
    print ( calculaMdc 24 12 )
    putStrLn "Agradecemos por usar o Programa."
