create table dim_favorecido
(
	sk_favorecido bigint not null
		primary key,
	version int default 'NULL' null,
	date_from datetime default 'NULL' null,
	date_to datetime default 'NULL' null,
	cnpj bigint default 'NULL' null,
	nome varchar(200) default '''NULL''' null
)
;

create index idx_dim_favorecido_lookup
	on dim_favorecido (cnpj)
;

create index idx_dim_favorecido_tk
	on dim_favorecido (sk_favorecido)
;

create table dim_portador
(
	sk_portador bigint not null
		primary key,
	version int default 'NULL' null,
	date_from datetime default 'NULL' null,
	date_to datetime default 'NULL' null,
	portador varchar(200) default '''NULL''' null,
	orgao varchar(200) default '''NULL''' null,
	orgao_superior varchar(200) default '''NULL''' null,
	cpf varchar(14) default 'NULL' null
)
;

create index idx_dim_portador_lookup
	on dim_portador (portador)
;

create index idx_dim_portador_tk
	on dim_portador (sk_portador)
;

create table dim_tempo
(
	data_numerica tinytext default 'NULL' null,
	ano2 tinytext default 'NULL' null,
	ano4 tinytext default 'NULL' null,
	ano_mes_abreviado tinytext default 'NULL' null,
	ano_mes_numero tinytext default 'NULL' null,
	ano_trimestre tinytext default 'NULL' null,
	data datetime default 'NULL' null,
	data_completa tinytext default 'NULL' null,
	data_comprida tinytext default 'NULL' null,
	data_curta tinytext default 'NULL' null,
	data_media tinytext default 'NULL' null,
	dia_abreviado tinytext default 'NULL' null,
	dia_do_ano tinytext default 'NULL' null,
	dia_do_mes tinytext default 'NULL' null,
	e_primeiro_dia_da_semana tinytext default 'NULL' null,
	e_primeiro_dia_do_mes tinytext default 'NULL' null,
	e_ultimo_dia_da_semana tinytext default 'NULL' null,
	e_ultimo_dia_do_mes tinytext default 'NULL' null,
	sk_tempo int not null
		primary key,
	mes_abreviado tinytext default 'NULL' null,
	mes_numero tinytext default 'NULL' null,
	nome_dia tinytext default 'NULL' null,
	nome_mes tinytext default 'NULL' null,
	nome_trimestre tinytext default 'NULL' null,
	semana_do_ano tinytext default 'NULL' null,
	semana_do_mes tinytext default 'NULL' null,
	trimestre_numero tinytext default 'NULL' null,
	dia_da_semana int default 'NULL' null
)
;

create table fato_gasto
(
	sk_favorecido int default 'NULL' null,
	sk_portador int default 'NULL' null,
	sk_tempo int default 'NULL' null,
	valor double default 'NULL' null
)
;

