module MinMax (calculaMdc, calculaMmc) where

--Funcao para realizar calculo do MDC com dois numeros de entrada utilizando funcao pronta do Haskell (mdc)
calculaMdc :: Int -> Int -> Int
calculaMdc n1 n2 | n1 < n2 = calculaMdc n2 n1
                 | n2 == 0 = n1
                 | otherwise = calculaMdc n2 (mod n1 n2)

--Funcao para calcular o MMC entre dois numeros de entrada utilizando funcoes prontas de mmc e mdc do Haskell
calculaMmc :: Int -> Int -> Int
calculaMmc n1 n2 = (n1 * n2) `div` (calculaMdc n1 n2)
