module FuncoesAvancadas (fatorial, exponencial) where

--Funcao para calcular um numero fatorial utilizando recursividade
fatorial :: Int -> Int
fatorial 0 = 1
fatorial numero = numero * fatorial (numero-1)

--Funcao para calcular um exponencial de numero reais utilizando recursividade
exponencial :: Float -> Float -> Float
exponencial base 0 = 1
exponencial base expoente = base * exponencial base (expoente-1)
