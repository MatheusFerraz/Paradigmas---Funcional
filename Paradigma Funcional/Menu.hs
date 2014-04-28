
--MENU-------------------------------------------------------------------------------------

limpaTela = putStrLn "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

inicio = do 	putStrLn " \n"
		putStrLn " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		putStrLn " +           Seja Bem-Vindo            +"
		putStrLn " +       -Calculadora Funcional-       +"
		putStrLn " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		putStrLn " +                                     +"
		putStrLn " +  1. Soma                            +" 
		putStrLn " +  2. Subtração                       +"
		putStrLn " +  3. Multiplicação                   +"
		putStrLn " +  4. Divisão                         +"
		putStrLn " +  5. Média                           +"
		putStrLn " +  6. Fatorial                        +"
		putStrLn " +  7. Exponencial                     +"
		putStrLn " +  8. MDC                             +"
		putStrLn " +  9. MMC                             +"
		putStrLn " +  10. Função de 2º Grau              +"
		putStrLn " +  11. Ajuste Linear                  +"
		putStrLn " +  0. Sair                            +" 
		putStrLn " +                                     +"
		putStrLn " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n" 
		
continuar = do	putStrLn "\nPrecione ENTER para continuar!\n"
		
menusair = do 	putStrLn " \n"
		putStrLn " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		putStrLn " +           Seja Bem-Vindo            +"
		putStrLn " +       -Calculadora Funcional-       +"
		putStrLn " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		putStrLn " +                                     +"
		putStrLn " +   Deseja realmenter sair?           +"
		putStrLn " +                                     +"
		putStrLn " +  1. Sim                             +"
		putStrLn " +  2. Não                             +"
		putStrLn " +                                     +"
		putStrLn " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n"  		

menusoma = do 	putStrLn " \n"
		putStrLn " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		putStrLn " +           Seja Bem-Vindo            +"
		putStrLn " +       -Calculadora Funcional-       +"
		putStrLn " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		putStrLn " +       Para realizar a soma          +"
		putStrLn " +        dos numeros digite:          +"
		putStrLn " +   somaLista [<numeros_desejados>]   +"
		putStrLn " +     Observe o exemplo a seguir:      +"
		putStrLn " +        somaLista [1,2,3,4]          +"
		putStrLn " +  O resultado aparecerá em seguida   +"
		putStrLn " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		putStrLn " +Ao finalizar, digite 'main' novamente+"	
		putStrLn " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n"		
		
menumultiplica = do 	putStrLn " \n"
		putStrLn " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		putStrLn " +           Seja Bem-Vindo            +"
		putStrLn " +       -Calculadora Funcional-       +"
		putStrLn " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		putStrLn " +    Para realizar a multiplixação    +"
		putStrLn " +        dos numeros digite:          +"
		putStrLn " +multiplicaLista [<numeros_desejados>]+"
		putStrLn " +     Observe o exemplo a seguir:     +"
		putStrLn " +      multiplicaLista [1,2,3,4]      +"
		putStrLn " +  O resultado aparecerá em seguida   +"
		putStrLn " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		putStrLn " +Ao finalizar, digite 'main' novamente+"	
		putStrLn " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n"
		


--MAIN----------------------------------------------------------------------------------------------------------------

main = start x

x = ""

start y = do
		limpaTela
		inicio
		numeroMenu <- getLine
		case numeroMenu of
			"0" -> sair y
			"1" -> soma y
			otherwise -> do {putStrLn "\nOpcao Invalida!"; continuar ; start y}
			

sair y = do
		limpaTela
		menusair
		numeroMenu <- getLine
		case numeroMenu of
			"1" -> return()
			"2" -> start y
			otherwise -> do {putStrLn "\nOpcao Invalida!"; continuar ; sair y}


soma y = do
		limpaTela
		menusoma

		






