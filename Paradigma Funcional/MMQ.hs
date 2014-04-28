module MMQ (aproxLinear, aproxQuadra, aproxHiperb, aproxLog) where

import Listas

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
aproxQuadra :: ([Float],[Float]) -> (Float, Float)
aproxQuadra ((x:xs),(y:ys)) =	(((((somaLista(quadradoLista(quadradoLista(x:xs))))*(somaLista(y:ys)))-
								((somaLista(quadradoLista(x:xs)))*
								(somaLista(somaMultListas(((quadradoLista(x:xs)),(y:ys)))))))/
								(((recTamListas((x:xs),(y:ys)))*
								(somaLista(quadradoLista(quadradoLista(x:xs)))))-
								((somaLista(quadradoLista(x:xs)))*(somaLista(quadradoLista(x:xs)))))),
								((((recTamListas((x:xs),(y:ys)))*
								(somaLista(somaMultListas(((quadradoLista(x:xs)),(y:ys))))))-
								((somaLista(quadradoLista(x:xs)))*(somaLista(y:ys))))/
								(((recTamListas((x:xs),(y:ys)))*
								(somaLista(quadradoLista(quadradoLista(x:xs)))))-
								((somaLista(quadradoLista(x:xs)))*(somaLista(quadradoLista(x:xs)))))))

--Funcao para calcular o MMQ com aproximacao Hiperbolica (y = a + b/x)
aproxHiperb :: ([Float],[Float]) -> (Float, Float)
aproxHiperb ((x:xs),(y:ys)) = 	(((((somaLista(inversoLista(quadradoLista(x:xs))))*(somaLista(y:ys)))-
								((somaLista(inversoLista(x:xs)))*
								(somaLista(somaMultListas(((inversoLista(x:xs)),(y:ys)))))))/
								(((recTamListas((x:xs),(y:ys)))*(somaLista(inversoLista(quadradoLista(x:xs)))))-
								((somaLista(inversoLista(x:xs)))*(somaLista(inversoLista(x:xs)))))),
								((((recTamListas((x:xs),(y:ys)))*
								(somaLista(somaMultListas(((inversoLista(x:xs)),(y:ys))))))-
								((somaLista(inversoLista(x:xs)))*(somaLista(y:ys))))/
								(((recTamListas((x:xs),(y:ys)))*(somaLista(inversoLista(quadradoLista(x:xs)))))-
								((somaLista(inversoLista(x:xs)))*(somaLista(inversoLista(x:xs)))))))

--Funcao para calcular o MMQ com aproximacao Logaritmica (y = a + b*log(x))
aproxLog :: ([Float],[Float]) -> (Float, Float)
aproxLog ((x:xs),(y:ys)) = 	(((((somaLista(quadradoLista(logLista(x:xs))))*(somaLista(y:ys)))-
							((somaLista(logLista(x:xs)))*
							(somaLista(somaMultListas(((logLista(x:xs)),(y:ys)))))))/
							(((recTamListas((x:xs),(y:ys)))*(somaLista(quadradoLista(logLista(x:xs)))))-
							((somaLista(logLista(x:xs)))*(somaLista(logLista(x:xs)))))),
							((((recTamListas((x:xs),(y:ys)))*
							(somaLista(somaMultListas(((logLista(x:xs)),(y:ys))))))-
							((somaLista(logLista(x:xs)))*(somaLista(y:ys))))/
							(((recTamListas((x:xs),(y:ys)))*(somaLista(quadradoLista(logLista(x:xs)))))-
							((somaLista(logLista(x:xs)))*(somaLista(logLista(x:xs)))))))
