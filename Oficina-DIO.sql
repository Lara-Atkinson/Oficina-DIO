
Create database if not exists WORKSHOPDIO;
Use workshopdio;
Drop database workshopdio;

create table Wclient (
	    idWclient int auto_increment primary key,
        Fname varchar  (10),
        Minit char (3),
        Lname varchar (20),
        CPF char (11) not null,
        Address varchar (30),
        constraint unique_cpf_Wclient unique (CPF)
);
desc client;
drop table client;

create table Workshop (
    idWorkshop int auto_increment primary key,
    SocialName varchar (255) not null,
    AbstName varchar(255),
    CNPJ char(15),
    Location varchar (255),
    PhoneNumber char (11) not null,
    constraint unique_cnpj_workshop unique (CNPJ)
);

Select * from  Workshop  where SocialName;

desc Workshop;
drop table Workshop;

create table OS (
number int,
emissionDate date, 
amount int, 
osStatus enum ('em espera', 'em execução', 'finalizado'),
completionDate date
);

desc table OS;
select * from OS where emissionDate;
select * from OS where osStatus;

create table payments (
		idclient int,
        idPayment int,
        typePayment enum ('Cheque', 'Cartão', 'Dois cartões'),
        limmitAvailable float,
        primary key (idClient, idpayment)
);

drop table payments;
desc payments;

select * from payments where typePayment;


create table mechanic (
	idMechanic int auto_increment primary key,
        Fname varchar  (10),
        Minit char (3),
        Lname varchar (20),
		Mcode int,
		specialization varchar (15),
        CPF char (11) not null,
        Address varchar (30),
        constraint unique_cpf_mechanic unique (CPF)
);
desc mechanic;
drop table mechanic;

desc workshop;


