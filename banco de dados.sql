create table `bd_caso_estudo_vendas`. `tb_forn` (
	`forn_cod` int not null primary key, 
    `forn_nome` varchar (30) null,
    `forn_tell` varchar (13) null
);
 create table `bd_caso_estudo_vendas`. `tb_depto` (
	`depto_cod` int not null primary key,
	`depto_descricao` varchar (60) null
 ); 
create table `bd_caso_estudo_vendas`. `tb_func`(
	`func_cod` int not null primary key,
    `func_depto` int not null, 
    `func_nome` varchar (50) not null,
    `func_cpf` varchar (18) not null
);
create table `bd_caso_estudo_vendas`. `tb_prod`(
	`prod_cod` int not null primary key,
    `prod_forn_cod` int not null, 
    `prod_desc` varchar (60)null,
	`prod_vlr` decimal null
);
create table `bd_caso_estudo_vendas`. `tb_compra`(
	`compra_cod` int not null primary key,
    `compra_cliente_cod`int not null,
    `compra_func_cod`int not null,
    `compra_qntd_prod`int not null
);
create table `bd_caso_estudo_vendas`. `tb_cliente`(
	`cli_cod`int not null primary key,
    `cli_nome`varchar (60) not null,
    `cli_cpf`varchar (18) not null,
    `cli_end_rua` varchar (40) null,
    `cli_end_num`varchar (10) null,
    `cli_end_bairro`varchar (30) null,
	`cli_end_cep`varchar (9) null
);
create table `bd_caso_estudo_vendas`. `tb_cli_tel`(
	`tel_cod`int not null primary key,
    `tel_cli_cod`int not null,
    `tel_num` varchar (13) not null
);
create table `bd_caso_estudo_vendas`. `tb_prod_comp`(
	`prod_cod`int not null,
    `comp_cod`int not null
);

show tables;



