# BD Caso Estudo Vendas

Este repositório contém um conjunto de scripts SQL que representam um banco de dados para um estudo de caso relacionado a vendas. O banco de dados foi projetado para gerenciar informações sobre fornecedores, departamentos, funcionários, produtos, compras e clientes.

## Tabelas Criadas

As seguintes tabelas foram criadas como parte do banco de dados:

### 1. `tb_forn` (Fornecedores)
Armazena informações sobre os fornecedores de produtos.

| Campo       | Tipo    | Descrição                           |
|-------------|---------|-------------------------------------|
| `forn_cod`  | `int`   | Código único do fornecedor (PK)     |
| `forn_nome` | `varchar(30)` | Nome do fornecedor                  |
| `forn_tell` | `varchar(13)` | Telefone do fornecedor              |

### 2. `tb_depto` (Departamentos)
Armazena informações sobre os departamentos da empresa.

| Campo        | Tipo           | Descrição                             |
|--------------|----------------|---------------------------------------|
| `depto_cod`  | `int`          | Código único do departamento (PK)    |
| `depto_descricao` | `varchar(60)` | Descrição do departamento            |

### 3. `tb_func` (Funcionários)
Armazena informações sobre os funcionários da empresa.

| Campo         | Tipo           | Descrição                             |
|---------------|----------------|---------------------------------------|
| `func_cod`    | `int`          | Código único do funcionário (PK)     |
| `func_depto`  | `int`          | Código do departamento (FK)          |
| `func_nome`   | `varchar(50)`  | Nome do funcionário                  |
| `func_cpf`    | `varchar(18)`  | CPF do funcionário                   |

### 4. `tb_prod` (Produtos)
Armazena informações sobre os produtos disponíveis para venda.

| Campo         | Tipo           | Descrição                             |
|---------------|----------------|---------------------------------------|
| `prod_cod`    | `int`          | Código único do produto (PK)         |
| `prod_forn_cod` | `int`        | Código do fornecedor (FK)            |
| `prod_desc`   | `varchar(60)`  | Descrição do produto                 |
| `prod_vlr`    | `decimal`      | Valor do produto                     |

### 5. `tb_compra` (Compras)
Armazena informações sobre as compras feitas pelos clientes.

| Campo            | Tipo           | Descrição                             |
|------------------|----------------|---------------------------------------|
| `compra_cod`     | `int`          | Código único da compra (PK)          |
| `compra_cliente_cod` | `int`      | Código do cliente (FK)               |
| `compra_func_cod`   | `int`       | Código do funcionário que registrou a compra (FK) |
| `compra_qntd_prod`  | `int`       | Quantidade de produtos comprados     |

### 6. `tb_cliente` (Clientes)
Armazena informações sobre os clientes.

| Campo          | Tipo           | Descrição                             |
|----------------|----------------|---------------------------------------|
| `cli_cod`      | `int`          | Código único do cliente (PK)         |
| `cli_nome`     | `varchar(60)`  | Nome do cliente                      |
| `cli_cpf`      | `varchar(18)`  | CPF do cliente                       |
| `cli_end_rua`  | `varchar(40)`  | Rua do endereço do cliente           |
| `cli_end_num`  | `varchar(10)`  | Número do endereço do cliente        |
| `cli_end_bairro` | `varchar(30)` | Bairro do cliente                    |
| `cli_end_cep`  | `varchar(9)`   | CEP do cliente                       |

### 7. `tb_cli_tel` (Telefones dos Clientes)
Armazena os números de telefone dos clientes.

| Campo        | Tipo           | Descrição                             |
|--------------|----------------|---------------------------------------|
| `tel_cod`    | `int`          | Código único do telefone (PK)        |
| `tel_cli_cod`| `int`          | Código do cliente (FK)               |
| `tel_num`    | `varchar(13)`  | Número de telefone do cliente        |

### 8. `tb_prod_comp` (Produtos e Compras)
Relaciona os produtos com as compras realizadas.

| Campo        | Tipo           | Descrição                             |
|--------------|----------------|---------------------------------------|
| `prod_cod`   | `int`          | Código do produto (FK)               |
| `comp_cod`   | `int`          | Código da compra (FK)                |

## Comandos SQL

### 1. Criação de Tabelas
O script SQL inclui a criação das seguintes tabelas:

- `tb_forn` (Fornecedores)
- `tb_depto` (Departamentos)
- `tb_func` (Funcionários)
- `tb_prod` (Produtos)
- `tb_compra` (Compras)
- `tb_cliente` (Clientes)
- `tb_cli_tel` (Telefones dos Clientes)
- `tb_prod_comp` (Produtos e Compras)

### 2. Exibição das Tabelas
Após a criação das tabelas, o comando `show tables` exibe todas as tabelas do banco de dados.

## Como usar

1. Clone o repositório para sua máquina local:

```bash
git clone https://github.com/LuisMoura18/aula_01/blob/main/bd_caso_estudos_vendas.sql
```
## Desenvolvido por: 

Luis Andre Moura.

Orientador: Hudson Neves
https://github.com/HudsonNeves
