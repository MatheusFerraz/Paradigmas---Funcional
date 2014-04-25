module Main where

import FuncoesGenericas (somaLista, multiplicaLista, subtraiValores)

main = do
    putStrLn "Bem vindo ao programa que simula uma Calculadora simples!"
    putStrLn ("A seguir, tem-se os resultados das operacoes de soma e multiplicacao com os elementos da Lista [1,2,3,4].")
    print ( somaLista [1,2,3,4] )
    print ( multiplicaLista [1,2,3,4] )
    putStrLn ("A seguir, apresenta-se o resultado da diferenca entre os numeros 10 e 5.")
    print( subtraiValores 10 5 )
    putStrLn "Agradecemos por usar o Programa."
