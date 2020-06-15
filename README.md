# Cadastro-e-validacao-CPF-CNPJ
Exercicio realizado durante o curso SQL Server DBA/BI COTI Prof Wallace.

Criação da procedure "usp_cadastrarCliente" com os dados de um cliente

Remove a pontuação e hifen do campo doc.

Após limpeza do campo conta os caracteres, caso seja onze será cadastrado como cpf, caso possua quatorze CNPJ, outros valores retornará a mensagem 'Documento Inválido.'.
