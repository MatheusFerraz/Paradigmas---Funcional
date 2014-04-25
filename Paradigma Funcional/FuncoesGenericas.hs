module FuncoesGenericas (somaLista, multiplicaLista, subtraiValores) where

--Funcao para Soma dos Valores da Lista utilizando recursividade
somaLista [] = 0
somaLista (h:t) = h + (somaLista t)

--Funcao para multiplicacao dos Valores da Lista utilizando funcao pronta do Haskell (product)
multiplicaLista (h:t) = product((h:t))

--Funcao para realizar subtracao entre dois numeros fornecidos
subtraiValores :: Int -> Int -> Int
subtraiValores n1 n2 = if(n1>n2)
					   then (n1-n2)
					   else (n2-n1)

