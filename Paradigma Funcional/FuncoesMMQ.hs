module FuncoesMMQ (aproxLinear, quadradoLista, somaMultListas, recTamListas) where

import FuncoesGenericas

--Funcao para calcular o MMQ com aproximacao Linear (y = a + b*x)
aproxLinear :: ([Float],[Float]) -> (Float,Float)
aproxLinear ((x:xs),(y:ys)) = 	(((((somaLista(quadradoLista(x:xs)))*(somaLista(y:ys)))-
								((somaLista(x:xs))*(somaLista(somaMultListas(((x:xs),(y:ys)))))))/
								(((recTamListas((x:xs),(y:ys)))*(somaLista(quadradoLista(x:xs))))-
								((somaLista(x:xs))*(somaLista(x:xs))))),
								((((recTamListas((x:xs),(y:ys)))*(somaLista(somaMultListas(((x:xs),(y:ys))))))-
								((somaLista(x:xs))*(somaLista(y:ys))))/
								(((recTamListas((x:xs),(y:ys)))*(somaLista(quadradoLista(x:xs))))-
								((somaLista(x:xs))*(somaLista(x:xs))))))

--Funcao para calcular o MMQ com aproximacao Parabolica (y = a + b*x^2)
-- aproxQuadra :: ([Float],[Float]) -> (Float, Float)

--Funcao para calcular o MMQ com aproximacao Logaritmica (y = a + b*log(x))
-- aproxLog :: ([Float],[Float]) -> (Float, Float)

--Funcao para calcular o MMQ com aproximacao Hiperbolica (y = a + b/x)
-- aproxHiperb :: ([Float],[Float]) -> (Float, Float)

--Funcao para realizar o quadrado de cada valor da Lista utilizando recursividade
quadradoLista :: [Float] -> [Float]
quadradoLista [] = []
quadradoLista (x:xs) = (x*x:quadradoLista(xs))

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