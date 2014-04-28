module Listas(somaLista, multiplicaLista, contaLista, media, inversoLista,
			  quadradoLista, logLista, somaMultListas, recTamListas) where

--Funcao para Soma dos Valores da Lista utilizando recursividade
somaLista :: [Float] -> Float
somaLista [] = 0
somaLista (h:t) = h + (somaLista t)

--Funcao para multiplicacao dos Valores da Lista utilizando funcao pronta do Haskell (product)
multiplicaLista :: [Float] -> Float
multiplicaLista (h:t) = product((h:t))

--Funcao para realizar a contagem de elementos em uma Lista utilizando recursividade
contaLista :: [Float] -> Float
contaLista [] = 0
contaLista (h:t) = 1 + (contaLista t)

--Funcao para calcular a media de uma Lista utilizando chamada de outras funcoes
media :: [Float] -> Float
media serie = (somaLista serie) / (contaLista serie)

--Funcao que faz o Inverso (x -> 1/x) dos valores de uma Lista
inversoLista :: [Float] -> [Float]
inversoLista [] = []
inversoLista (x:xs) = 	if x == 0
						then error "Valor indevido!"
						else (1/x:inversoLista(xs))

--Funcao para realizar o quadrado de cada valor da Lista
quadradoLista :: [Float] -> [Float]
quadradoLista [] = []
quadradoLista (x:xs) = (x*x:quadradoLista(xs))

--Funcao para realizar o logaritmo natural de cada valor da Lista
logLista :: [Float] -> [Float]
logLista [] = []
logLista (x:xs) = (log(x):logLista(xs))

--Funcao para realizar a soma da multiplicação dos valores de duas Listas
somaMultListas :: ([Float],[Float]) -> [Float]
somaMultListas ([],[]) = []
somaMultListas ((x:xs),(y:ys)) = (x*y:somaMultListas((xs,ys)))

--Compara se duas listas possuem a mesma quantidade de termos, retorna se verdadeiro
recTamListas :: ([Float],[Float]) -> Float
recTamListas ([],[]) = error "Listas Vazias!"
recTamListas ((x:xs),[]) = error "Lista 2 Vazia!"
recTamListas ([],(y:ys)) = error "Lista 1 Vazia!"
recTamListas ((x:xs),(y:ys)) = 	if length(x:xs) == length(y:ys)
								then fromIntegral(length(x:xs))
								else error "Listas de Tamanhos Diferentes!"
								