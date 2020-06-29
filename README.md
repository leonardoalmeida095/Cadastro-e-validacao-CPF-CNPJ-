# Cadastro-e-validacao-CPF-CNPJ
Criação da procedure "usp_cadastrarCliente" com os dados de um cliente

A procedure realiza a leitura dos dados e remove as pontuações e hifens do campo DOC.

Após limpeza do campo,  realiza a contagem dos caracteres, caso seja onze será condicionado como cpf, caso possua quatorze como CNPJ, outros valores retornará a mensagem 'Documento Inválido.'.

Após processo de validação os dados serão inseridos nas tabelas "pessoaFisica" ou "pessoaJuridica".
