# Cadastro-e-validacao-CPF-CNPJ
Exercicio realizado durante o curso SQL Server DBA/BI COTI Prof Wallace.


Criação da procedure "usp_cadastrarCliente" com os dados de um cliente
NOME  VARCHAR(60)
EMAIL VARCHAR(50)
RENDA FLOAT
DOC   VARCHAR(20)
SEXO  CHAR
RAMO  VARCHAR(30)

Remove a pontuação e hifen do campo doc.
REPLACE(@DOC, '.', '')
REPLACE(REPLACE(@DOCSEMPONTOS, '-', ''), '/', '')

Após limpeza do campo conta os caracteres, caso seja onze será cadastrado como cpf, caso possua quatorze CNPJ, outros valores retornará a mensagem 'Documento Inválido.'.
