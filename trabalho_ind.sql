create database cartao
-- criando banco de dados --
-- criando tabela de usuarios

create table usuario ( 
us_cd_id serial,
us_tx_nome varchar (50),
us_tx_cpf varchar(12),
us_int_tel integer, 
us_tx_email varchar(50),
primary key (us_cd_id)
);
--criando tabela dos cartões

create table cartao(
ct_cd_id serial,
ct_dt_val date,
ct_int_cvv integer,
ct_int_senha integer,
fk_us_cd_id integer,
primary key (ct_cd_id),
foreign key (fk_us_cd_id) references usuario (us_cd_id)
);

drop table usuario ;

select
	*
from
	usuario u ;

select
	*
	from cartao;

insert
	into
	usuario (us_tx_nome,
	us_tx_cpf ,
	us_tx_email,
	us_int_tel)
values
('João Silva',
'123456789-00',
'joao@gmail.com',
'21999999'),
('Maria Santos',
'234567890-11',
'maria@hotmail.com',
'22888888'),
('Pedro Oliveira',
'345678901-22',
'pedro@yahoo.com',
'237777777'),
('Ana Souza',
'456789012-33',
'ana@outlook.com',
'246666666'),
('Bruno Costa',
'564890123-44',
'bruno@gmail.com',
'25555555');

insert
	into
	cartao (ct_cd_id,
	ct_dt_val ,
	ct_int_senha ,
	fk_us_cd_id)
values
('1122333344',
'2023-01-31',
'1234',
1),
('222334445',
'2023-02-28',
'2345',
2),
('333445556',
'2023-03-31',
'3456',
3),
('444556677',
'2023-04-30',
'4567',
4),
('555678822',
'2023-05-31',
'5678',
5);

select
	*
	from usuario u ,
	cartao c ;

select
	us_tx_nome ,
	us_tx_cpf
from
	usuario u ;

select
	ct_int_senha
from
	cartao c
where
	ct_cd_id >1;

select
	*
from
	usuario
order by
	us_tx_nome asc ;

select
	*
from
	usuario u
inner join cartao c on
	u.us_cd_id = c.ct_cd_id ;

select
	*
from
	usuario u
where
	us_cd_id <2
group by
	us_cd_id
order by
	us_tx_nome desc;
select
	count (us_cd_id),
	us_tx_nome
from
	usuario
group by
	us_tx_nome ;




