module FuncoesGenericas (somaLista, multiplicaLista, subtraiValores, contaLista, calculaMdc, calculaDelta, calculaSolQuadratica) where

--Funcao para Soma dos Valores da Lista utilizando recursividade
somaLista :: [Float] -> Float
somaLista [] = 0
somaLista (h:t) = h + (somaLista t)

--Funcao para multiplicacao dos Valores da Lista utilizando funcao pronta do Haskell (product)
multiplicaLista :: [Float] -> Float
multiplicaLista (h:t) = product((h:t))

--Funcao para realizar subtracao entre dois numeros fornecidos
subtraiValores :: Int -> Int -> Int
subtraiValores n1 n2 = if(n1>n2)
					   then (n1-n2)
					   else (n2-n1)

--Funcao para realizar a contagem de elementos em uma lista
contaLista :: [Float] -> Float
contaLista [] = 0
contaLista (h:t) = 1 + (contaLista t)

--Funcao para realizar calculo do MDC com dois numeros de entrada utilizando funcao pronta do Haskell (mdc)
calculaMdc :: Int -> Int -> Int
calculaMdc n1 n2 | n1 < n2 = calculaMdc n2 n1
                 | n2 == 0 = n1
                 | otherwise = calculaMdc n2 (mod n1 n2)

--Funcao para calcular o delta de uma funcao de segundo grau
calculaDelta :: Float -> Float -> Float -> Float
calculaDelta va vb vc = ((vb^2) - (4 * va * vc))

--Funcao para calcular a solucao de uma equacao de segundo grau
calculaSolQuadratica :: Float -> Float -> Float -> (Float, Float)
calculaSolQuadratica va vb vc = if(calculaDelta va vb vc) < 0.0  then undefined
	                            else ((((-vb) + sqrt(calculaDelta va vb vc)) / (2.0 * va)), (((-vb) - sqrt(calculaDelta va vb vc)) / (2.0 * va)))
