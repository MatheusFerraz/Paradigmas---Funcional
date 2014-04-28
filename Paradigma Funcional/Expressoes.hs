module Expressoes (subtraiValores, fatorial, exponencial, calculaDelta, calculaSolQuadratica) where

--Funcao para realizar subtracao entre dois numeros fornecidos
subtraiValores :: Int -> Int -> Int
subtraiValores n1 n2 = if(n1>n2)
					   then (n1-n2)
					   else (n2-n1)

--Funcao para calcular um numero fatorial utilizando recursividade
fatorial :: Int -> Int
fatorial 0 = 1
fatorial numero = numero * fatorial (numero-1)

--Funcao para calcular um exponencial de numero reais utilizando recursividade
exponencial :: Float -> Float -> Float
exponencial base 0 = 1
exponencial base expoente = base * exponencial base (expoente-1)

--Funcao para calcular o delta de uma funcao de segundo grau
calculaDelta :: Float -> Float -> Float -> Float
calculaDelta va vb vc = ((vb^2) - (4 * va * vc))

--Funcao para calcular a solucao de uma equacao de segundo grau
calculaSolQuadratica :: Float -> Float -> Float -> (Float, Float)
calculaSolQuadratica va vb vc = if(calculaDelta va vb vc) < 0.0  then undefined
	                            else ((((-vb) + sqrt(calculaDelta va vb vc)) / (2.0 * va)), (((-vb) - sqrt(calculaDelta va vb vc)) / (2.0 * va)))