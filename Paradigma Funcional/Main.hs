module Main where

import Menu
import Expressoes
import MinMax
import MMQ
import Listas

main = start x

x = ""

start y = do
		limpaTela
		inicio
		numeroMenu <- getLine
		case numeroMenu of
			"0" -> sair y
			"1" -> soma y
			"2" -> subtracao y
			"3" -> multiplicacao y
			"4" -> fat y
			"5" -> expo y
			"6" -> ln y
			"7" -> med y
			"8" -> equa2 y
			"9" -> mc y
			"10" -> dc y
			"11" -> quad y
			"12" -> alin y
			"13" -> apar y
			"14" -> ahip y
			"15" -> alog y
			otherwise -> do {putStrLn "\nOpcao Invalida!"; start y}
			

sair y = do
		limpaTela
		menusair
		numeroMenu <- getLine
		case numeroMenu of
			"1" -> return()
			"2" -> start y
			otherwise -> do {putStrLn "\nOpcao Invalida!"; sair y}


soma y = do
		limpaTela
		menusoma

subtracao y = do
		limpaTela
		menusub

multiplicacao y = do
		limpaTela
		menumult

fat y = do
		limpaTela
		menufat

expo y = do
		limpaTela
		menuexp

ln y = do
		limpaTela
		menuln

med y = do
		limpaTela
		menumedia

equa2 y = do
		limpaTela
		menuequa

mc y = do
		limpaTela
		menummc

dc y = do
		limpaTela
		menumdc

quad y = do
		limpaTela
		menuquad
		
alin y = do
		limpaTela
		menualin
		
apar y = do
		limpaTela
		menuapar
		
ahip y = do
		limpaTela
		menuahip
		
alog y = do
		limpaTela
		menualog