module FuncoesAvancadas (fatorial) where

--Funcao para calcular um numero fatorial utilizando recursividade
fatorial :: Int -> Int
fatorial 0 = 1
fatorial numero = numero * fatorial (numero-1)