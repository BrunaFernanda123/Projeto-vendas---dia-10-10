CREATE DATABASE VENDAS;

CREATE TABLE produto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE nota_fiscal (
   Id INT AUTO_INCREMENT PRIMARY KEY,
   data_emissao DATE NOT NULL,
   Cliente VARCHAR(100) NOT NULL,
   Valor_total DECIMAL(10, 2) NOT NULL,
   descricao TEXT
);

CREATE TABLE Itens (
   id INT AUTO_INCREMENT PRIMARY KEY,
   nome VARCHAR(100) NOT NULL,
   descricao TEXT,
   preco DECIMAL(10, 2) NOT NULL,
   quantidade INT NOT NULL,
   data_insercao DATE NOT NULL DEFAULT CURRENT_DATE
);

-- 1. Alterar o campo descrição_produto da tabela produto para varchar(50)
ALTER TABLE produto 
MODIFY descricao_produto VARCHAR(50);

-- 2. Adicionar o campo ICMS do tipo float depois do campo Numero_NF na tabela nota_fiscal
ALTER TABLE nota_fiscal 
ADD ICMS FLOAT AFTER Numero_NF;

-- 3. Adicionar o campo Peso do tipo float na tabela produto
ALTER TABLE produto 
ADD Peso FLOAT;

-- 4. Alterar a chave primária da tabela itens para ser apenas Num_item
ALTER TABLE itens 
DROP PRIMARY KEY,
ADD PRIMARY KEY (Num_item);

-- 5. Apresentar a estrutura da tabela produto
DESCRIBE produto;

-- 6. Apresentar a estrutura da tabela nota_fiscal
DESCRIBE nota_fiscal;

-- 7. Alterar o nome do campo Valor_NF para Valor_Total_NF na tabela nota_fiscal
ALTER TABLE nota_fiscal 
CHANGE Valor_NF Valor_Total_NF FLOAT;

-- 8. Remover o campo Data_NF da tabela nota_fiscal
ALTER TABLE nota_fiscal 
DROP COLUMN Data_NF;

-- 9. Remover a tabela itens
DROP TABLE itens;

-- 10. Alterar o nome da tabela nota_fiscal para vendas
RENAME TABLE nota_fiscal TO vendas;