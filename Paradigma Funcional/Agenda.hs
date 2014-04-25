module Agenda (Agenda, Nome, Telefone, pesquisaNome, quantosContatos, insereNovoContato, retiraContato, mostraAgenda) where

data Agenda a = [(Nome,Telefone)]
	Nome = [[Char]]
	Telefone = [Char]

pesquisaNome :: Agenda -> Nome -> Telefone

quantosContatos :: Agenda -> Nome -> Int

insereNovoContato :: Agenda -> Nome -> Telefone -> Agenda

retiraContato :: Agenda -> Nome -> Telefone -> Agenda

mostraAgenda :: Agenda -> String
