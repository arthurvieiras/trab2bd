Segundo trabalho de Banco de Dados 2015.2

TCC00166 — Banco de Dados

IC — Instituto de Computação

UFF — Universidade Federal Fluminense

BDUFF — EXEMPLOS DE TESTE
==========================================

Este arquivo comprimido possui:

— Arquivos de dados e catálogos das tabelas PECA, FORNECEDOR e PECAFORNECEDOR;

— 5 arquivos com operações de Álgebra Relacional;

— Este leia-me.

Cada arquivo Tx.alg funciona da seguinte forma:

— Para a n-ésima linha (que não seja a linha-resposta), uma tabela TxPn é criada (ou TxAy no caso desta ser a y-ésima solução da seleção x)

— Para a última linha, uma tabela TxR é criada (ou TxAyR) — o .ctl e .dad devem corresponder com o esperado.

Essas 5 operações farão parte da bateria de testes da apresentação, então não deixem de testá-las.

Qualquer dúvida, entrem em contato comigo.

DETALHES DAS OPERAÇÕES
==========================================

T1 = Retorna o código e o status dos fornecedores de Paris com status > 20 (Aula 16, Consulta 06)

T2 = Retorna pares de cidades de tal forma que exista um fornecedor na primeira cidade que forneça uma peça da segunda cidade (Aula 16, Consulta 17)

T3 = Retorna o nome dos fornecedores que fornecem peças com peso igual ou menor que 15, em ordem alfabética (duas tabelas-resposta criadas)
```SQL
	SELECT Nome
	FROM FORNECEDOR
	WHERE FID IN (
		SELECT FID
		FROM PECAFORNECEDOR
		WHERE PID IN (
			SELECT PID
			FROM PECA
			WHERE Peso <= 15))
	ORDER BY Nome;
```
Resposta esperada: Clark,Jones,Smith

T4 = Retorna o código da peça, código do fornecedor e nome da cidade das peças e fornecedores com cidade em comum, em ordem alfabética da cidade e depois em ordem crescente do código do fornecedor
```SQL
	SELECT P#, S#, P.Cidade
	FROM P INNER JOIN S ON P.Cidade = S.Cidade
	ORDER BY P.Cidade, S#;
```

Resposta esperada:
P1|S1|Londres
P4|S1|Londres
P1|S4|Londres
P4|S4|Londres
P2|S2|Paris
P5|S2|Paris
P2|S3|Paris
P5|S3|Paris

T5 = Retorna o nome e status dos fornecedores com status diferentes de 20, em ordem do status
```SQL
	SELECT Nome, Status
	FROM S#
	WHERE Status <> 20
	ORDER BY Status;
```
Resposta esperada:
Jones|10
Blake|30
Adams|30
